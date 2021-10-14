//
//  Invoice.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public enum InvoiceStatuses: String, Decodable {
    case pending = "pending"
    case paid = "paid"
    case paymentFailed = "payment_failed"
}

public enum InvoicePaidsBy: Decodable {
    case tenant, management
}

public struct Invoice: Decodable {
    public let id: Int?
    public let net: Int?
    public let net_charged: Int?
    public let tax: Int?
    public let tax_charged: Int?
    public let total: Int?
    public let total_charged: Int?
    public let description: String?
    public let user_id: Int?
    public let status: InvoiceStatuses?
    public let paid_by: InvoicePaidsBy?
    public let created_at: String?
    public let updated_at: String?
    public let apartment_id: Int?
    public let building_id: Int?
    public let charge_reason: String?
    public let applied_dvora_credit: Int?
    public let invoiceable_id: Int?
    public let invoice_lines: [InvoiceLine]?
}

