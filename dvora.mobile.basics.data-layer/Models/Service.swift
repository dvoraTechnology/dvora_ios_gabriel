//
//  Service.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct StatusName: Decodable {
    public let id: String?
    public let value: String
}

public struct CarteServiceStatus: Decodable {
    public let id: Int?
    public let value: String
    public let name: String
    public let color: String
    public let foreColor: String
}

public struct ComplimentaryServiceStatus: Decodable {
    public let id: Int?
    public let value: String
    public let name: String
    public let color: String
}

public struct ComplimentarySimpleServiceStatus: Decodable {
    public let id: Int?
    public let value: String
    public let name: String
    public let color: String
}

public struct CarteSubscriptionStatus: Decodable {
    public let id: Int?
    public let value: String
    public let name: String
    public let color: String
}

public struct CarteSubscriptionFrequency: Decodable {
    public let value: String
    public let name: String
    public let alias: String
}

public struct ComplimentaryInvoiceFrequency: Decodable {
    public let value: String
    public let name: String
}

public struct ComplimentarySubscriptionClient: Decodable {
    public let value: String
    public let name: String
}

public enum VariantFrequencies: String, Decodable {
    case perBooking = "per_booking"
    case monthly = "monthly"
    case oneTime = "one_time"
}

public enum VariantClients: String, Decodable {
    case apartmentMembership = "ApartmentMembership"
    case singleMembership = "SingleMembership"
}

public struct Variant: Decodable {
    public let id: Int?
    public let name: String?
    public let price: Int?
    public let created_at: String?
    public let updated_at: String?
    public let service_id: String?
    public let active: String?
    public let rate_weekly: Int?
    public let rate_biweekly: Int?
    public let rate_monthly: Int?
    public let unit_size: Int?
    public let rate_single: Int?
    public let invoice_frequency: VariantFrequencies?
    public let client: VariantClients?
}

public enum InventoryItemStatuses: Decodable {
    case available, unavailable, maintenance
}

public struct InventoryItem: Decodable {
    public let id: Int?
    public let description: String?
    public let name: String?
    public let service_id: Int?
    public let status: InventoryItemStatuses?
    public let created_at: String?
    public let updated_at: String?
}

public enum AppServiceTypes: String, Decodable {
    case complimentaryService = "ComplimentaryService"
    case carteService = "CarteService"
    case simpleService = "SimpleService"
    case spaceService = "SpaceService"
    case dryCleaningService = "DryCleaningService"
}

public enum AppServiceInvoiceFrequencies: String, Decodable {
    case perSeason = "per_season"
    case monthly = "monthly"
    case perBooking = "per_booking"
}

public enum AppServiceSpaceAccessCategories: Decodable {
    case constant, reservation
}

public struct AppService: Decodable {
    public let id: Int?
    public let buildings: [Building]?
    public let name: String?
    public let details: String?
    public let description: String?
    public let type: AppServiceTypes?
    public let created_at: String?
    public let updated_at: String?
    public let has_recurring_service: Bool?
    public let has_unit_size: Bool?
    public let taxable: Bool?
    public let square_cover: String?
    public let phone_cover: String?
    public let default_cover: String?
    public let square_cover_file: ActiveStorageBlob?
    public let phone_cover_file: ActiveStorageBlob?
    public let default_cover_file: ActiveStorageBlob?
    public let active_for_user: Bool?
    public let variants: [Variant]?
    public let active_for_building: Bool?
    public let active_subscription: AppSimpleSubscription?
    public let invoiced: Bool?
    public let invoice_frequency: AppServiceInvoiceFrequencies?
    public let terms_and_conditions: String?
    public let requires_manual_cancelation: Bool?
    public let start_date: String?
    public let end_date: String?
    public let allow_booking_in_advance_days: Int?
    public let sku: String?
    public let requires_attachment: Bool?
    public let subscription_client: String?
    public let has_special_instructions: Bool?
    public let published: Bool?
    public let space_access_category: AppServiceSpaceAccessCategories?
    public let doors: [Door]?
    public let has_manual_key: Bool?
    public let amenities: [Amenity]?
    public let allow_reservations_without_subscription: Bool?
    public let inventory_items: [InventoryItem]?
    public let has_inventory: Bool?
    public let manager_only: Bool?
    public let has_password: Bool?
}

public struct PublicAppService: Decodable {
    public let id: Int
    public let name: String
    public let details: String
    public let description: String
    public let marketplace_variants: [Variant]
    public let variants: [Variant]
    public let square_cover_file: ActiveStorageBlob
    public let phone_cover_file: ActiveStorageBlob
    public let default_cover_file: ActiveStorageBlob
    public let has_special_instructions: Bool
    public let type: String
}

public struct PublicServiceBundle: Decodable {
    public let available_variant: Variant
    public let square_cover_file: ActiveStorageBlob
    public let phone_cover_file: ActiveStorageBlob
    public let default_cover_file: ActiveStorageBlob
    public let description: String
    public let detailed_description: String
    public let id: Int
    public let maximum_savings: Int
    public let name: String
    public let services: [PublicAppService]
    public let terms_and_conditions: String?
    public let _isBestValue: Bool
}

public enum ServiceSubscriptionStatuses: String, Decodable {
    case active = "active"
    case canceled = "canceled"
    case scheduledForActivation = "scheduled_for_activation"
    case paymentFailed = "payment_failed"
    case scheduledForCancelation = "scheduled_for_cancelation"
    case requiresCancelation = "requires_cancelation"
    case deliverKey = "deliver_key"
    case claimKey = "claim_key"
    case requiresActivation = "requires_activation"
}

public struct AppSimpleSubscription: Decodable {
    public let id: Int?
    public let use_default_day: Bool?
    public let use_default_timeslot: Bool?
    public let use_default_service_duration: Bool?
    public let use_default_assigned_to: Bool?
    public let status: ServiceSubscriptionStatuses?
    public let service_id: Int?
    public let skip_next: Bool?
    public let last_service_date: String?
    public let selected_variant_name: String?
    public let selected_variant_price: String?
    public let selected_frequency_name: String?
    public let selected_frequency_rate: String?
    public let created_at: String?
    public let updated_at: String?
    public let user_id: Int?
    public let apartment_id: Int?
    public let building_id: Int?
    public let last_service: AppLastServiceInfo?
    public let special_instructions: String?
    public let opt_out_reason: String?
    public let default_day: String?
    public let default_start_time: String?
    public let default_end_time: String?
    public let default_service_duration: String?
    public let updated_by: Int?
    public let type: VariantClients?
    public let last_booking_receipt: AppSubscriptionAmount?
    public let outstanding_receipt: AppSubscriptionAmount?
    public let assigned_managers: [User]?
    public let last_booking_charges: [DvoraCharge]?
    public let last_booking_invoices: [Invoice]?
    public let comments: [Comment]?
    public let service: AppSimpleSubscriptionExtra?
    public let apartment: Apartment?
    public let building: Building?
    public let user: User?
    public let photos: [ActiveStorageBlob]?
    public let square_cover_file: ActiveStorageBlob?
    public let phone_cover_file: ActiveStorageBlob?
    public let default_cover_file: ActiveStorageBlob?
    public let has_special_instructions: Bool?
    public let bundle_id: Int?
    public let invoice_frequency: VariantFrequencies?
    public let active_until: String?
    public let variant_id: Int?
    // TODO: Recursive Issue - public let bundle: ServiceBundle?
    public let service_subscriptions: [AppSimpleSubscription]?
    public let scheduled_activation_date: String?
    public let scheduled_cancelation_date: String?
    public let start_date: String?
    public let cancelation_date: String?
    public let end_date: String?
    public let membership_id: Int?
    // TODO: Recursive Issue - public let membership: AppSimpleSubscription?
    public let complementary_bookings: [ComplimentaryBooking]?
    public let inventory_items: [InventoryItem]?
    public let ssid: String?
    public let password: String?
    public let invoices: [Invoice]?
}

public struct AppSimpleSubscriptionExtra: Decodable {
    public let id: Int?
    public let name: String?
    public let details: String?
    public let description: String?
    public let type: AppServiceTypes?
    public let building_ids: [Int]?
    public let created_at: String?
    public let updated_at: String?
    public let has_recurring_service: Bool?
    public let has_unit_size: Bool?
    public let taxable: Bool?
    public let cover_image: String?
    public let variants: [Variant]?
    public let buildings: [Building]?
    public let square_cover_file: ActiveStorageBlob?
    public let phone_cover_file: ActiveStorageBlob?
    public let default_cover_file: ActiveStorageBlob?
    public let has_special_instructions: Bool?
}

public struct AppLastServiceInfo: Decodable {
    public let id: Int?
    public let user_id: Int?
    public let service_id: Int?
    public let status: String?
    public let service_subscription_id: Int?
    public let building_id: Int?
    public let apartment_id: Int?
    public let assign_to: User?
    public let rating: String?
    public let rating_comment: String?
    public let created_at: String?
    public let updated_at: String?
    public let scheduled_day: String?
    public let scheduled_date: String?
    public let updated_by: User?
    public let special_instructions: String?
    public let category: String?
    public let variant_id: Int?
    public let booking_status_complementary: Int?
    public let booking_status_carte: Int?
    public let transaction_id: Int?
    public let reserved_on: String?
    public let total_charged: Int?
    public let charged_by: User?
    public let created_by: User?
    public let preferred_service_days: [Int]?
    public let preferred_start_time: String?
    public let preferred_end_time: String?
    public let estimated_service_duration: Int?
    public let completion_notes: String?
    public let selected_variant_name: String?
    public let selected_variant_price: Int?
    public let initial_cleaning_condition: Int?
    public let promo_code: String?
    public let technician_notes: String?
    public let assigned_managers_count: Int?
    public let final_service_duration: Int?
    public let has_special_instructions: Bool?
}

public struct AppServiceSimple: Decodable {
    public let id: Int?
    public let name: String?
    public let active_for_user: Bool?
    public let details: String?
    public let description: String?
    public let type: AppServiceTypes?
    public let building_ids: [Int]?
    public let created_at: String?
    public let updated_at: String?
    public let has_recurring_service: Bool?
    public let has_unit_size: Bool?
    public let taxable: Bool?
    public let cover_image: String?
    public let variants: [Variant]?
    public let buildings: [Building]?
    public let square_cover_file: ActiveStorageBlob?
    public let phone_cover_file: ActiveStorageBlob?
    public let default_cover_file: ActiveStorageBlob?
    public let terms_and_conditions: String?
    public let has_special_instructions: Bool?
    public let start_date: String?
    public let end_date: String?
    public let allow_booking_in_advance_days: Int?
    public let maximum_start_date: String?
    public let minimum_end_date: String?
    public let transition_date: String?
    public let requires_attachment: Bool?
    public let available_inventory: Bool?
    public let has_inventory: Bool?
}

public struct AppServiceDryCleaning: Decodable {
    public let items: [DryCleaningItem]?
    public let scheduled_date: String?
}

public enum AppServiceDryCleaningBookedStatuses: String, Decodable {
    case cleaning = "cleaning"
    case cleaned = "cleaned"
    case completed = "completed"
    case awaitingPickup = "awaiting_pickup"
    case charged = "charged"
}

public enum AppServiceDryCleaningBookedTypes: String, Decodable {
    case dryCleaningOrder = "DryCleaningOrder"
}

public struct AppServiceDryCleaningBooked: Decodable {
    public let created_at: String
    public let id: Int
    public let name: String
    public let scheduled_date: String
    public let status: AppServiceDryCleaningBookedStatuses
    public let total: Int
    public let type: AppServiceDryCleaningBookedTypes
    public let special_instructions: String?
    public let service: AppServiceSimple?
    public let allows_cancellation: Bool?
    public let item_lines: [DryCleaningLine]?
    public let summary: String?
    public let user: User
    public let building: Building
    public let apartment: Apartment
    public let membership: AppSimpleSubscription?
}

public struct DryCleaningItem: Decodable {
    public let coastal_cleaners_id: Int?
    public let created_at: String?
    public let external_id: String?
    public let id: Int?
    public let name: String?
    public let price: Int?
    public let service_id: Int?
    public let sku: String?
    public let updated_at: String?
}

public struct DryCleaningLine: Decodable {
    public let item: DryCleaningItem?
    public let quantity: Int?
}

public struct ComplimentaryBooking: Decodable {
    public let apartment_id: Int?
    public let assign_to: Int?
    public let assigned_user: User?
    public let building_id: Int?
    public let created_at: String?
    public let extra_id: Int?
    public let id: Int?
    public let rating: String?
    public let rating_comment: String?
    public let scheduled_day: String?
    public let service_id: Int?
    public let service_subscription_id: Int?
    public let special_instructions: String?
    public let status: String?
    public let updated_at: String?
    public let updated_by: Int?
    public let user_id: Int?
}

public struct AppSubscriptionAmount: Decodable {
    public let net: Int?
    public let tax: Int?
    public let total: Int?
    public let success: Bool?
}

public struct AppALaCarteService: Decodable {
    public let id: Int?
    public let user_id: Int?
    public let service_id: Int?
    public let status: String?
    public let created_at: String?
    public let updated_at: String?
    public let scheduled_date: String?
    public let type: AppServiceTypes?
    public let variant_id: Int?
    public let special_instructions: String?
    public let building_id: Int?
    public let apartment_id: Int?
    public let booking_status_complementary: String?
    public let booking_status_carte: Int?
    public let assign_to: String?
    public let transaction_id: Int?
    public let total_charged: Int?
    public let charged_by: User?
    public let created_by: User?
    public let owner: User?
    public let rating_comment: String?
    public let rating: String?
    public let ratings: [Rating]?
    public let preferred_service_days: [Int]?
    public let preferred_start_time: String?
    public let preferred_end_time: String?
    public let estimated_service_duration: Int?
    public let service_subscription_id: Int?
    public let completion_notes: String?
    public let initial_cleaning_condition: Int?
    public let selected_variant_name: String?
    public let selected_variant_price: Int?
    public let booking_receipt: AppSubscriptionAmount?
    public let outstanding_receipt: AppSubscriptionAmount?
    public let technician_notes: String?
    public let updated_by: Int?
    public let time_spent: Int?
    public let service: AppALaCarteServiceExtra?
    public let apartment: Apartment?
    public let variant: Variant?
    public let assigned_user: User?
    public let manager_info: User?
    public let building: Building?
    public let user: User?
    public let service_subscription: AppSimpleSubscription?
    public let charge_user: String?
    public let comments: [Comment]?
    public let assigned_managers: [User]?
    public let photos: [String]?
    public let photos_urls: [String]?
    public let manager_photos: [String]?
    public let manager_photos_urls: [String]?
    public let charges: [DvoraCharge]?
    public let booking_status_updates: [String]?
    public let square_cover_file: ActiveStorageBlob?
    public let phone_cover_file: ActiveStorageBlob?
    public let default_cover_file: ActiveStorageBlob?
    public let statusChanges: [AppALaCarteServiceBookingStatusChanges]?
    public let notes: [Note]?
    public let invoices: [Invoice]?
    public let amount_paid: Int?
}

public struct AppALaCarteServiceExtra: Decodable {
    public let id: Int?
    public let name: String?
    public let details: String?
    public let description: String?
    public let category: String?
    public let building_ids: [Int]?
    public let created_at: String?
    public let updated_at: String?
    public let has_recurring_service: Bool?
    public let has_unit_size: Bool?
    public let taxable: Bool?
    public let square_cover_file: ActiveStorageBlob?
    public let phone_cover_file: ActiveStorageBlob?
    public let default_cover_file: ActiveStorageBlob?
    public let variants: [Variant]?
    public let apartament: Apartment?
    public let variant: Variant?
    public let assigned_user: User?
    public let manager_info: User?
    public let building: Building?
    public let user: User?
    public let service_subscription: String?
    public let charge_user: User?
    public let comments: [Comment]?
    public let assigned_managers: [User]?
    public let photos: [String]?
    public let manager_photos: [String]?
    public let charges: [DvoraCharge]?
    public let booking_status_updates: [String]?
    public let url: String?
}

public struct AppALaCarteServiceBookingStatusChanges: Decodable {
    public let complementary_booking_id: Int?
    public let created_at: String?
    public let carte_booking_id: Int?
    public let id: Int?
    public let service_subscription_id: Int?
    public let status: String?
    public let updated_at: String?
    public let user_id: Int?
}

public struct ServiceCalendarSettings: Decodable {
    public let start_date: String
    public let end_date: String
    public let assignedManagers: [Int]
    public let services: [String]
    public let status: [String]
    // TODO: public let scrollTime: string | number | DurationInput | Duration
}
public enum OrderTypes: String, Decodable {
    case carteBooking = "CarteBooking"
    case reservation = "Reservation"
    case dryCleaningOrder = "DryCleaningOrder"
}

public struct Order: Decodable {
    public let id: Int?
    public let name: String?
    public let status: String?
    public let type: OrderTypes?
    public let scheduled_date: String?
    public let created_at: String?
    public let service_subscription_id: Int?
}

public struct ServiceOrder: Decodable {
    public let id: Int?
    public let invoices: [PaymentInvoice]?
    public let managed_by: User?
    public let name: String?
    public let scheduled_date: String?
    public let status: String?
    public let type: String?
}

public struct SubscriptionStatus: Decodable {
    public let id: Int
    public let value: ServiceSubscriptionStatuses
    public let name: String
    public let color: String
    public let foreColor: String
    public let tooltip: String?
}

public struct MembershipStatus: Decodable {
    public let id: Int
    public let value: ServiceSubscriptionStatuses
    public let name: String
    public let color: String
    public let foreColor: String
    public let tooltip: String?
}

public struct ServiceStatus: Decodable {
    public let value: String
    public let name: String
    public let color: String
    public let foreColor: String?
}

public struct SpaceCategory: Decodable {
    public let value: String
    public let name: String
}

public struct OrderType: Decodable {
    public let value: String
    public let name: String
    public let color: String
    public let foreColor: String?
}
