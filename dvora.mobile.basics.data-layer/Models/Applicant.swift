//
//  Applicant.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation
// TODO: GalleryOperations...
public struct ApplicantData: Decodable {
    public let dob: String?
    public let first_name: String?
    public let last_name: String?
    public let cell_phone: Int?
    public let ssn: Int?
    public let address_city: String?
    public let address_state: String?
    public let address_street: String?
    public let address_zipcode: String?
    public let employment_current: Bool?
    public let employment_salary: Int?
    public let financial_documents: [ActiveStorageBlob]?
    public let guarantor: ApplicantDataGuarantor?
}

public struct ApplicantDataGuarantor: Decodable {
    public let first_name: String
    public let last_name: String
    public let email: String
    public let phone: String
}

public enum ApplicantTenantCategories: String, Decodable {
    case mainTenant = "main_tenant"
    case roomMate = "roommate"
    case mainApplicant = "main_applicant"
    case coApplicant = "co_applicant"
}

public struct Applicant: Decodable {
    public let applicant_data: ApplicantData?
    public let cell_phone: String?
    public let email: String?
    public let first_name: String?
    public let full_name: String?
    public let id: Int?
    public let last_name: String?
    public let role: String?
    public let dob: String?
    public let relationship: String?
    public let tenant_category: ApplicantTenantCategories?
}

public enum ApplicationApplicantStatuses: String, Decodable {
    case inProgress = "in_progress"
    case submitted = "submitted"
    case approved = "approved"
    case rejected = "rejected"
}

public struct DvoraApplication: Decodable {
    public let id: Int
    public let user_id: Int
    public let added_coapplicants: Bool
    public let added_occupants: Bool
    public let added_pets: Bool
    public let added_payment: Bool
    public let allowed_credit_and_bg_check: Bool?
    public let filled_application_data: Bool
    public let status: ApplicationApplicantStatuses
    public let submitted_for_review: Bool
    public let applicant: Applicant?
    public let transunion_result_pdf_file: ActiveStorageBlob?
    public let applicant_number: Int?
    public let guarantor: ApplicantDataGuarantor
    public let relationship: String
    public let signed_lease: Bool
}

public struct ApplicationStatusItem: Decodable {
    public let value: String
    public let name: String
    public let color: String
    public let backgroundColor: String
}

public struct ApplicationApplicantStatusItem: Decodable {
    public let value: String
    public let name: String
    public let color: String
    public let backgroundColor: String
}

public enum ApplicationStatuses: String, Decodable {
    case inProgress = "in_progress"
    case complete = "complete"
    case approved = "approved"
    case rejected = "rejected"
    case paid = "paid"
    case countersigned = "countersigned"
}

public struct SubmissionBasicData: Decodable {
    public let id: Int?
    public let status: ApplicationStatuses?
}

public struct SubmissionIndex: Decodable {
    public let created_at: String?
    public let total: Int?
    public let main_applicant_name: String?
    public let apartment: Apartment?
}

public struct Submission: Decodable {
    public let id: Int?
    public let lease_length: Int?
    public let lease_pdf_file: ActiveStorageBlob?
    public let lease_start: String?
    public let lease_end: String?
    public let rent_value: Int?
    public let source_ref: String?
    public let status: ApplicationStatuses?
    public let view_lease_url: String?
    public let apartment: Apartment?
    public let applications: [DvoraApplication]?
    public let bundle_selections: [SubmissionBundle]?
    public let additional_occupants: [AddedOccupants]?
    public let pets: [AppPet]?
    public let occupants: Int?
    public let total: Int?
    public let apartment_discounted_rent: Int?
    public let security_deposit: Int?
    public let pets_deposit: Int?
    public let invoices: [PaymentInvoice]?
}

public struct SubmissionBundle: Decodable {
    public let bundle: ServiceBundle?
    public let variant: Variant?
    public let service: AppServiceSimple?
    public let variant_id: Int?
    public let bundle_id: Int?
    public let service_id: Int?
}

public struct CoApplicantDataPOSTApplicantData: Decodable {
    public let ssn: Int?
    public let address_city: String?
    public let address_state: String?
    public let address_street: String?
    public let address_zipcode: String?
}

public struct CoApplicantDataPOST: Decodable {
    public let first_name: String
    public let last_name: String
    public let cell_phone: Int
    public let email: String
    public let relationship: String
    public let dob: String
    public let applicant_data: CoApplicantDataPOSTApplicantData?
}

public struct AddCoApplicants: Decodable {
    public let applicants: [CoApplicantDataPOST]?
}

