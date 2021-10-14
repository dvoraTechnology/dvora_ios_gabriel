//
//  Rating.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct Rating: Decodable {
    public let announcement_id: Int?
    public let complementary_booking_id: Int?
    public let conversation_id: Int?
    public let created_at: String?
    public let carte_booking_id: Int?
    public let id: Int?
    public let manager_id: Int?
    public let rating: Int?
    public let rating_comment: String?
    public let rating_string: String?
    public let reopened: Bool?
    public let request_id: Int?
    public let updated_at: String?
}
