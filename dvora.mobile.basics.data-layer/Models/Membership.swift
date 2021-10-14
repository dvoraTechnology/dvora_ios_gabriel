//
//  Membership.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct ServiceBundle: Decodable {
    public let id: Int?
    public let name: String?
    public let price: Int?
    public let updated_at: String?
    public let extra_id: Int?
    public let active: Bool?
    public let rate_weekly: Int?
    public let rate_biweekly: Int?
    public let rate_monthly: Int?
    public let unit_size: Int?
    public let rate_single: Int?
    public let service_id: Int?
    public let bundle_id: Int?
    public let client: String?
    public let detailed_description: String?
    public let description: String?
    public let square_cover_file: ActiveStorageBlob?
    public let phone_cover_file: ActiveStorageBlob?
    public let default_cover_file: ActiveStorageBlob?
    public let terms_and_conditions: String?
    public let taxable: Bool?
    public let variants: [Variant]?
    public let buildings: [Building]?
    public let services: [String]?
    public let savings_advertising: String?
    public let active_for_user: Bool?
    public let active_membership: AppSimpleSubscription?
}

