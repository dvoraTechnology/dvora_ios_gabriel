//
//  Charges.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public struct DvoraCharge: Decodable {
    public let id: Int?
    public let carte_booking_id: Int?
    public let building_id: Int?
    public let apartment_id: Int?
    public let charge_reason: String?
    public let charged_net: Int?
    public let charged_tax: Int?
    public let charged_total: Int?
    public let created_at: String?
    public let event_booking_id: Int?
    public let service_id: Int?
    public let is_void: Bool?
    public let net: Int?
    public let place_id: String?
    public let refund_amount: Int?
    public let refund_time: String?
    public let refund_user: String?
    public let reservation_id: Int?
    public let tax: Int?
    public let tenant_id: Int?
    public let total: Int?
    public let total_income: Int?
    public let updated_at: String?
    public let user_id: Int?
    public let void_date: String?
    public let void_user: Int?
}

public enum DvoraPaymentTransactionStatuses: Decodable {
    case pending, declined, canceled, complete
}

public enum DvoraPaymentTransactionTypes: Decodable {
    case charge
}

public struct DvoraPaymentTransaction: Decodable {
    public let amount: Int?
    public let description: String?
    public let dvora_charge: DvoraCharge?
    public let failed_timestamp: String?
    public let fee: Int?
    public let id: String?
    public let initiated_timestamp: String?
    public let status: DvoraPaymentTransactionStatuses?
    public let status_details: String?
    public let type: DvoraPaymentTransactionTypes?
}

