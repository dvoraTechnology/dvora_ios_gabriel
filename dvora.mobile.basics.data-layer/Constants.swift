//
//  Configuration.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 7/10/21.
//

import Foundation

//MARK: - Public Members
/// Return constants regarding BackEnd connection info according to build configuration...
internal enum Constants {
    static var API_URL_STRING: String {
        let isSecure = try! UserDefined.value(for: "API_URL_SECURE") == 1
        if isSecure {
            return try! "https://" + UserDefined.value(for: "API_URL_STRING")
        }
        
        return try! "http://" + UserDefined.value(for: "API_URL_STRING")
    }
    
    static var PLACE_PUBLIC_TOKEN: String {
        return try! UserDefined.value(for: "PLACE_PUBLIC_TOKEN")
    }
    
    static var PLACE_PUBLIC_KEY: String {
        return try! UserDefined.value(for: "PLACE_PUBLIC_KEY")
    }
    
    static var MIXPANEL_TOKEN: String {
        return try! UserDefined.value(for: "MIXPANEL_TOKEN")
    }
}

//MARK: - Private Members

// Internal Use...
private class AnchorBundle {
    
}

// Internal Use...
private enum UserDefined {
    enum Error: Swift.Error {
        case missingKey, invalidValue
    }

    static func value<T>(for key: String) throws -> T where T: LosslessStringConvertible {
        let bundle = Bundle(for: AnchorBundle.self)
        guard let object = bundle.object(forInfoDictionaryKey:key) else {
            throw Error.missingKey
        }

        switch object {
        case let value as T:
            return value
        case let string as String:
            guard let value = T(string) else { fallthrough }
            return value
        default:
            throw Error.invalidValue
        }
    }
}
