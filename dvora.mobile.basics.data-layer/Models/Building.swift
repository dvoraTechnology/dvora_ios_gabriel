//
//  Building.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 11/10/21.
//

import Foundation

public struct AvailableBuildingFeatures: Decodable {
    public let building_id: Int
    public let created_at: String
    public let updated_at: String
    public let id: Int
    public let has_amenities: Bool
    public let has_announcements: Bool
    public let has_chat: Bool
    public let has_doors: Bool
    public let has_events: Bool
    public let has_logbook: Bool
    public let has_packages: Bool
    public let has_payments: Bool
    public let has_perks: Bool
    public let has_bundles: Bool
    public let has_schedule: Bool
    public let has_visitors: Bool
    public let has_workorders: Bool
    public let has_cargo: Bool
    public let has_reservations: Bool
    public let has_additional_services: Bool
    public let has_carte_services: Bool
    public let has_complementary_refresh: Bool
    public let has_concierge: Bool
    public let has_contacts: Bool
    public let has_in_unit_delivery: Bool
}

public struct Building: Decodable {
    public let id: Int?
    public let name: String?
    public let mgmt_phone: String?
    public let mgmt_email: String?
    public let address: String?
    public let city: String?
    public let state: String?
    public let zipcode: String?
    public let cover_image_url: String?
    public let cover_image: String?
//    public let payment_account: PaymentAccount?
    public let external_payment_portal: String?
    public let category: String?
    public let policy: AvailableBuildingFeatures?
    public let apartments_count: Int?
    public let created_at: String?
    public let property_type: String?
    public let residents_count: Int?
    public let building_hours: String?
    public let yardi_code: String?
    public let assigned_super_id: Int?
    public let assigned_super: User?
    public let assigned_general_manager: User?
    public let apartments: [Apartment]?
    public let payment_account_id: Int?
    public let description: String?
    public let num_of_floors: Int?
    public let management: Management?
    public let photos: [Photo]?
    public let pets_allowed: Bool?
}

public struct Photo: Decodable {
    public let url: String
}

public struct Management: Decodable {
    public let name: String
    public let email: String
}

public struct BuildingGroup: Decodable {
    public let id: Int?
    public let name: String?
    public let buildings: [Building]?
}

