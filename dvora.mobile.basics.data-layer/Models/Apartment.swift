//
//  Apartment.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 11/10/21.
//

import Foundation

public struct Apartment: Decodable {
    public let id: Int?
    public let unit: String?
    public let building: Building?
    public let building_id: Int?
    public let description: String?
    public let economic_status: String?
    public let is_yardi_apartment: Bool?
    public let lease_end: String?
    public let lease_start: String?
    public let min_square_feet: String?
    public let rent: Int?
    public let basic_bundle_rent: Int?
    public let best_bundle_rent: Int?
    public let rent_due: String?
    public let unit_bathrooms: Int?
    public let unit_bedrooms: Int?
    public let unit_showers: Int?
    public let unit_economic_status: String?
    public let matterport_url: String?
    public let available_on_marketplace: Bool?
    public let unit_type: String?
    public let users: [User]?
    public let yardi_code: String?
    public let rent_day: String?
    public let floor_plan_name: String?
    public let floorplan_image_url: String?
    public let rent_charges_balance: String?
    public let other_charges_balance: String?
    public let dvora_id: Int?
    public let source: String?
    public let photos: [ActiveStorageBlob]?
    public let floorplan_image_file: [String]?
    public let floorplan_image: String?
    public let floorplan_pdf_file: [String]?
    public let floorplan_pdf: String?
    public let balcony: Bool?
    public let terrace: Bool?
    public let rooftop: Bool?
    public let penthouse: Bool?
    public let garden: Bool?
    public let allow_pets: Bool?
    public let orientation: String?
    public let availability_date: String?
    public let gallery_operations: GalleryOperations?
    public let unit_members: [String]?
    public let meter_number: Int?
    public let full_address: String?
}

public struct PublicApartment: Decodable {
    public let id: Int
    public let floorplan_image_file: ActiveStorageBlob
    public let floorplan_pdf_file: String
    public let min_square_feet: String
    public let pictures: [ActiveStorageBlob]
    public let matterport_url: String
    public let rent: Int
    public let discounted_rent: Int
    public let three_d_photo: String
    public let unit: String
    public let unit_bathrooms: Int
    public let unit_bedrooms: Int
    public let balcony: Bool
    public let garden: Bool
    public let penthouse: Bool
    public let terrace: Bool
    public let bundle_price: Int
    public let savings: Int
    public let security_deposit: Int
}

