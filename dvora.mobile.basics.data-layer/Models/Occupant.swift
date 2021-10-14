//
//  Occupant.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct AddedOccupants: Decodable {
    public let id: Int?
    public let dob: String?
    public let first_name: String?
    public let last_name: String?
    public let full_name: String?
    public let relationship: String?
    public let user_id: Int?
    public let created_at: String?
    public let updated_at: String?
}

public struct AddedOccupantsPOST: Decodable {
    public let first_name: String
    public let last_name: String
    public let dob: String
    public let relationship: String
}

public struct AddOccupants: Decodable {
    public let occupants: [AddedOccupantsPOST]
}

