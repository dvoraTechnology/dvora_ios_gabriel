//
//  PaymentAccount.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct PaymentAccount: Decodable {
    public let id: Int?
    public let name: String?
    public let stripe_account_id: Int?
    public let created_at: String?
    public let updated_at: String?
    public let management_id: Int?
    public let rentshare_account_id: String?
    public let has_deposit_account: Bool?
    public let place_id: Int?
}

public enum InvoiceableTypes: String, Decodable {
    case eventBooking = "EventBooking"
    case reservation = "Reservation"
    case carteBooking = "CarteBooking"
    case singleMembership = "SingleMembership"
    case apartmentMembership = "ApartmentMembership"
    case serviceSubscriptionComplementary = "ServiceSubscriptionComplementary"
    case serviceSubscriptionSimple = "ServiceSubscriptionSimple"
    case serviceSubscriptionSpace = "ServiceSubscriptionSpace"
    case request = "Ticket"
    case dryCleaningOrder = "DryCleaningOrder"
    case submission = "Submission"
}

public struct PaymentInvoice: Decodable {
    public let id: Int?
    public let invoiceable_id: Int?
    public let invoiceable_type: InvoiceableTypes?
    public let net: Int?
    public let tax: Int?
    public let total: Int?
    public let total_charged: Int?
    public let description: String?
    public let user_id: Int?
    public let status: String?
    public let paid_by: String?
    public let created_at: String?
    public let updated_at: String?
    public let invoiceable: String?
    public let net_charged: Int?
    public let tax_charged: Int?
    public let charge_reason: String?
    public let apartment: Apartment?
    public let building: Building?
    public let user: User?
    public let applied_dvora_credit: Int?
    public let invoice_lines: [InvoiceLine]?
    public let charges: [PaymentInvoiceCharge]?
    public let refund_amount: Int?
}

public struct InvoiceLine: Decodable {
    public let id: Int?
    public let net: Int?
    public let tax: Int?
    public let total: Int?
    public let description: String?
    public let user_id: Int?
    public let status: String?
    public let paid_by: String?
    public let created_at: String?
    public let updated_at: String?
    public let invoiceable_type: InvoiceableTypes?
    public let invoiceable_id: Int?
    public let invoiceable: String?
    public let net_charged: Int?
    public let tax_charged: Int?
    public let charge_reason: String?
    public let applied_dvora_credit: Int?
    public let apartment: Apartment?
    public let building: Building?
    public let user: User?
}

public enum PlaceTransactionStatuses: Decodable {
    case authorized, complete, canceled, declined, failed, refunded, refund, ach_failed, chargeback, void
}

public struct PaymentInvoiceCharge: Decodable {
    public let id: Int?
    public let charged_total: Int?
    public let invoice_id: Int?
    public let refund_amount: Int?
    public let place_transaction_status: PlaceTransactionStatuses?
}

public struct PlaceTransactionStatus: Decodable {
    public let value: String
    public let name: String
    public let forecolor: String
    public let color: String
}

