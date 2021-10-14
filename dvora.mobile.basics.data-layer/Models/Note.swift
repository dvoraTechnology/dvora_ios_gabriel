//
//  Note.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct Note: Decodable {
    public let id: Int?
    public let note: String?
    public let created_at: String?
    public let updated_at: String?
    public let created_by: User?
    public let _deleting: Bool?
}
