//
//  ErrorHandler.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 8/10/21.
//

import Foundation

public class CustomErrorHandler: Error {
    init(_ error: Error) {
        print(error.localizedDescription.debugDescription)
    }
}

public enum ErrorHandler: Error {
    case statusCode(URLResponse)
    case simpleError(Error)
    func getErrorMessage() -> String {
        return self.localizedDescription.description
    }
}
