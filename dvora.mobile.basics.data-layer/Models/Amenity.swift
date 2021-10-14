//
//  Amenity.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct AmenityReservationFilters: Decodable {
    public let split_by_date: Bool?
    public let apartment_id: Int?
}

public struct DailySchedule: Decodable {
    public let weekday: Int
    public let name: String
    public let start_time: String
    public let end_time: String
    public let active: Bool
}

public struct ReservationReceipt: Decodable {
    public let net: Int
    public let success: Bool
    public let tax: Int
    public let total: Int
}

public struct AmenityReservation: Decodable {
    public let id: Int?
    public let start_time: String?
    public let end_time: String?
    public let amenity_id: Int?
    public let user_id: Int?
    public let created_at: String?
    public let updated_at: String?
    public let transaction_id: Int?
    public let status: String?
    public let apartment_id: Int?
    public let apartment: Apartment?
    public let building_id: Int?
    public let building: Building?
    public let cancel_date: String?
    public let canceled_by: Int?
    public let canceled_user: User?
    public let approved_date: String?
    public let approved_by: Int?
    public let approved_user: User?
    public let guests: Int?
    public let details: String?
    public let additional_unit_occupants: Int?
    public let start_time_no_zone: String?
    public let end_time_no_zone: String?
    public let start_time_utc: String?
    public let end_time_utc: String?
    public let is_tenant_cancel_valid: Bool?
    public let is_manager_cancel_valid: Bool?
    public let amenity: Amenity?
    public let user: User?
    public let accepted_terms: Bool?
    public let charges: [DvoraCharge]?
    public let notes: [Note]?
    public let receipt: ReservationReceipt?
    public let invoices: [Invoice]?
    public let membership: AppSimpleSubscription?
}

public struct Amenity: Decodable {
    public let id: Int?
    public let name: String?
    public let price: Int?
    public let capacity: Int?
    public let description: String?
    public let published: Bool?
    public let created_at: String?
    public let updated_at: String?
    public let minimum_time: Int?
    public let maximum_time: Int?
    public let auto_approve: Bool?
    public let max_guests: Int?
    public let limit_by_interval: Bool?
    public let limit_type: String?
    public let limit_by: String?
    public let limit: Int?
    public let interval_length: String?
    public let has_daily_schedule: Bool?
    public let allow_manager_cancelation: Bool?
    public let allow_tenant_cancelation: Bool?
    public let allow_approved_cancelation_manager: Bool?
    public let allow_approved_cancelation_tenant: Bool?
    public let tenant_approved_cancelation_limit: Int?
    public let tenant_pending_cancelation_limit: Int?
    public let manager_approved_cancelation_limit: Int?
    public let manager_pending_cancelation_limit: Int?
    public let allow_door_access: Bool?
    public let available_until: String?
    public let max_additional_unit_occupants: Int?
    public let restrict_booking_in_advance: Bool?
    public let restrict_booking_in_advance_days: Int?
    public let block_by_single_approved: Bool?
    public let cutoff: Int?
    public let reminder_start_minutes: Int?
    public let reminder_end_minutes: Int?
    public let block_by_single_pending: Bool?
    public let allow_notes: Bool?
    public let require_details: Bool?
    public let default_cover_file: ActiveStorageBlob?
    public let phone_cover_file: ActiveStorageBlob?
    public let square_cover_file: ActiveStorageBlob?
    public let terms_and_conditions: String?
    public let daily_schedules: [DailySchedule]?
    public let buildings: [Building]?
    public let doors: [Door]?
    public let reserve_through_chat: Bool?
    public let has_daily_price: Bool?
    public let daily_price: Int?
}

public enum BlockedSlotCatgegories: Decodable {
    case holiday, standard
}

public struct BlockedSlot: Decodable {
    public let id: Int
    public let name: String
    public let amenities: [Amenity]?
    public let start_time: String
    public let end_time: String
    public let category: BlockedSlotCatgegories
}

