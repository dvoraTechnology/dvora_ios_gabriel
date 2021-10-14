//
//  Http.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 7/10/21.
//

import Foundation

public class Http {
    private enum Metods: String {
        case get = "GET"
        case post = "POST"
        case put = "PUT"
        case delete = "DELETE"
    }
    
    private static func sendRequest<T, R>(_ url: String, _ payload: T?, httpMethod: Metods, _ completion: @escaping (Result<R?, ErrorHandler>) -> Void) where T: Encodable, R: Decodable {
        var request = URLRequest(
            url: URL(string: Constants.API_URL_STRING + url)!,
            cachePolicy: .reloadIgnoringLocalCacheData
        )
        
        request.httpMethod = httpMethod.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("*/*", forHTTPHeaderField: "Accept")
        
        if let payload = payload {
            let encoder = JSONEncoder()
            request.httpBody = try! encoder.encode(payload)
        }
        
        let urlSession = URLSession.shared
        let task = urlSession.dataTask(with: request) { data, response, error in
            if let e = error {
                completion(.failure(ErrorHandler.simpleError(e)))
                return
            }
            
            do {
                completion(.success(try JSONDecoder().decode(R.self, from: data!)))
            }
            catch {
                // TODO: Mejor manejo de errores, esperemos cuando tengamos la oportunidad de ver manejos de error "controlados" por parte del BE (ej. "typeMismatch(Swift.Array<Any>, Swift.DecodingError.Context(codingPath: [], debugDescription: "Expected to decode Array<Any> but found a dictionary instead.", underlyingError: nil))")...
                print(error)
                completion(.failure(ErrorHandler.simpleError(error)))
                print(String(data: data!, encoding: .utf8)!)
            }
//            print(String(data: data!, encoding: .utf8)!)
        }
        
        task.resume()
    }
    
    public static func post<T, R>(to url: String, payload: T?, then completion: @escaping (Result<R?, ErrorHandler>) -> Void) where T: Encodable, R: Decodable {
        sendRequest(url, payload, httpMethod: .post, completion)
    }
}

