//
//  Comment.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct Comment: Decodable {
    public let content: String?
    public let created_at: String?
    public let carte_booking_id: Int?
    public let id: Int?
    public let logbook_entry_id: Int?
    public let photos_urls: [String]?
    public let photos: [ActiveStorageBlob]?
    public let post_id: Int?
    public let updated_at: String?
    public let user: User?
    public let user_id: Int?
}
