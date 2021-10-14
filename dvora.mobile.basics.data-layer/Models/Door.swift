//
//  Door.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct Door: Decodable {
    public let id: Int?
    public let category: Int?
    public let created_at: String
    public let door_name: String
    public let door_type: String
    public let last_action: String
    public let multlock_id: Int
    public let updated_at: String
}
