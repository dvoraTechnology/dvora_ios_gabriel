//
//  User.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 11/10/21.
//

import Foundation

public struct UserLastSessionUpdate: Decodable {
    public let created_at: String?
    public let device: String?
    public let id: Int?
    public let updated_at: String?
    public let user_id: Int?
}

public struct Credentials: Decodable {
    public let email: String
    public let password: String
    public let apartment_id: Int?
    public let device: String?
}

public struct LoginResponse: Decodable {
    public let managers: [User]?
    public let tenants: [User]?
    public let applicants: [User]?
    public let meta: LoginResponseMeta?
    public let errors: [String]?
    public let user_message: String?
}
    
public enum UserTypes: String, Decodable {
    case manager = "Manager"
    case tenant = "Tenant"
    case applicant = "Applicant"
}

public struct LoginResponseMeta: Decodable {
    public let user_type: UserTypes
    public let requires_onboarding: Bool
    public let password_reset: Bool
    public let password_reset_key: String?
}

public struct ResidentLoginOption: Decodable {
    public let _loading: Bool?
    public let user: User?
    public let apartment: Apartment
}

public struct ManagerTier: Decodable {
    public let name: String
    public let value: Int
    public let color: String
    public let id: Int?
}

public struct UserRole: Decodable {
    public let name: String
    public let value: String
    public let id: Int?
}

public struct UserStatus_: Decodable {
    public let name: String
    public let value: String
    public let color: String?
}

public struct PermissionPolicy: Decodable {
    public let resident_update: Bool?
    public let chat_read: Bool?
    public let chat_write: Bool?
    public let perk_read: Bool?
    public let perk_write: Bool?
    public let amenity_read: Bool?
    public let amenity_write: Bool?
    public let reservation_operation: Bool?
    public let reservation_operation_charge: Bool?
    public let ticket_read: Bool?
    public let ticket_write: Bool?
    public let ticket_charge: Bool?
    public let ticket_reopen: Bool?
    public let message_read: Bool?
    public let message_write: Bool?
    public let building_message_write: Bool?
    public let document_read: Bool?
    public let document_write: Bool?
    public let event_read: Bool?
    public let event_write: Bool?
    public let logbook_read: Bool?
    public let logbook_write: Bool?
    public let package_read: Bool?
    public let package_write: Bool?
    public let package_charge: Bool?
    public let service_charge: Bool?
    public let service_read: Bool?
    public let service_write: Bool?
    public let visitors_read: Bool?
    public let visitors_write: Bool?
    public let dry_cleaning_read: Bool?
    public let invoice_read: Bool?
    public let invoice_write: Bool?
    public let article_write: Bool?
    public let article_read: Bool?
    public let space_write: Bool?
    public let space_read: Bool?
    public let applicants_read: Bool?
    public let applicants_write: Bool?
    public let technician_dashboard_access: Bool?
    public let ce_one_dashboard_access: Bool?
    public let ce_two_dashboard_access: Bool?
    public let moving_read: Bool?
    public let moving_write: Bool?
    public let superadmin: Bool?
    public let id: Int?
    public let user_id: Int?
    public let updated_at: String?
    public let created_at: String?
}

public struct UserSettings: Decodable {
    public let id: Int?
    public let created_at: String?
    public let email_notifications: Bool?
    public let push_notifications: Bool?
    public let sms_notifications: Bool?
    public let updated_at: String?
    public let user_id: Int?
}

public enum ResidentTypes: String, Decodable {
    case mainTenant = "main_tenant"
    case otherOccupant = "other_occupant"
    case roommate = "roommate"
    case coApplicant = "co_applicant"
}

public enum UserStatuses: String, Decodable {
    case past = "Past"
    case current = "Current"
    case future = "Future"
}

public struct User: Decodable {
    public let id: Int?
    public let email: String?
    public let first_name: String?
    public let last_name: String?
    public let full_name: String?
    public let online: Bool?
    public let is_manager: Bool?
    public let type: UserTypes?
    public let password: String?
    public let auth_token: String?
    public let api_key: String?
    public let role: String?
    public let profile_picture_url: String?
    public let profile_picture_meta: AttachmentBlob?
    public let tenant_category: ResidentTypes?
    public let condo_resident_type: String?
    public let has_unread_chat_messages: Bool?
    public let status: UserStatuses?
    public let tier: Int?
    public let home_phone: String?
    public let cell_phone: String?
    public let work_phone: String?
    public let emergency_contact_name: String?
    public let emergency_contact_phone: String?
    public let emergency_contact_email: String?
    public let emergency_contact_work_phone: String?
    public let emergency_contact_home_phone: String?
    public let management_id: Int?
    public let reset_password: Bool?
    public let hide_contact: Bool?
    public let apartments: [Apartment]?
    // TODO: Recursive Issue - public let apartment: Apartment?
    public let nameWithUnit: String?
    public let userApartmentIds: UserApartmentIds?
    public let in_unit_package_delivery: Bool?
    public let doors: [Door]?
    public let buildings: [Building]?
    public let permission_policy: PermissionPolicy?
    public let setting: UserSettings?
    public let login_count: Int?
    public let new_in_unit_delivery: Bool?
    public let new_weekly_refresh: Bool?
    public let store_rate: String?
    public let notes: [Note]?
    public let latest_session_update: UserLastSessionUpdate?
    public let dvora_credit_balance: String?
    public let created_at: String?
    public let dob: String?
    public let daily_schedules: [UserDailySchedule]?
    public let rating: Double?
    public let pets: String?
    public let notification_counter: UnreadNotificationsObj?
    public let applicant_data: ApplicantData?
    public let application: DvoraApplication?
    public let pseg_account_number: String?
    public let suez_account_number: String?
    public let lease_start: String?
    public let lease_end: String?
}

public enum Weekdays: String, Decodable {
    case sunday = "sunday"
    case monday = "monday"
    case tuesday = "tuesday"
    case wednesday = "wednesday"
    case thursday = "thursday"
    case friday = "friday"
    case saturday = "saturday"
}

public struct UserDailySchedule: Decodable {
    public let id: Int
    public let amenity_id: Int?
    public let weekday: Weekdays
    public let name: String?
    public let start_time: String?
    public let end_time: String?
    public let active: Bool
}

public struct UserApartmentIds: Decodable {
    public let userId: Int
    public let apartmentId: Int
}

public struct DvoraBalance: Decodable {
    public let id: Int?
    public let amount: Int?
    public let assigned_manager: User?
    public let note: String?
    public let created_at: String?
}
