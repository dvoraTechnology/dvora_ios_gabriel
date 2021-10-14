//
//  Test.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 28/09/21.
//

import Foundation
import SwiftUI

public struct Test
{
    public static func printTest()
    {
//        let bundle = Bundle(for: Test2.self)
//        if let value = bundle.object(forInfoDictionaryKey: "API_URL_STRING") as? String {
//            print(value)
//        }
        
        print(Constants.API_URL_STRING)
        print(Constants.PLACE_PUBLIC_TOKEN)
        print(Constants.PLACE_PUBLIC_KEY)
        print(Constants.MIXPANEL_TOKEN)
    }
}

public class Test2 {
    
}
