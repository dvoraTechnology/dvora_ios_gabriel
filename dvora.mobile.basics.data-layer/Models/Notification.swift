//
//  Notification.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public enum OverlayNotificationKinds: String, Decodable {
  case system = "SYSTEM_NOTIFICATION"
  case application = "APPLICATION_NOTIFICATION"
}

public enum OverlayNotificationTypes: String, Decodable {
  case info = "Overlay_NOTIFICATION_INFO"
  case warning = "Overlay_NOTIFICATION_WARNING"
  case danger = "Overlay_NOTIFICATION_DANGER"
  case success = "Overlay_NOTIFICATION_SUCCESS"
}

public struct OverlayNotificationCreate: Decodable {
    public let message: String
    public let type: OverlayNotificationTypes?
    public let title: String?
    public let isDismissible: Bool?
    public let link: [String]?
    public let duration: Int?
}

public struct OverlayNotification: Decodable {
    public let id: Int
    public let link: [String]?
    public let message: String
    public let title: String?
    public let isDismissible: Bool
    public let duration: Int
    public let type: OverlayNotificationTypes
    public let kind: OverlayNotificationKinds
}

public enum AppNotificationTypes: String, Decodable {
    case announcement = "Announcement"
    case apartmentAnnouncement = "ApartmentAnnouncement"
    case directAnnouncement = "DirectAnnouncement"
    case buildingAnnouncement = "BuildingAnnouncement"
    case carteBooking = "CarteBooking"
    case serviceSubscription = "ServiceSubscription"
    case serviceSubscriptionComplementary = "ServiceSubscriptionComplementary"
    case serviceSubscriptionCarte = "ServiceSubscriptionCarte"
    case serviceSubscriptionSimple = "ServiceSubscriptionSimple"
    case serviceSubscriptionSpace = "ServiceSubscriptionSpace"
    case singleMembership = "SingleMembership"
    case apartmentMembership = "ApartmentMembership"
    case chat = "Chat"
    case conversation = "Conversation"
    case eventBooking = "EventBooking"
    case event = "Event"
    case ticket = "Ticket"
    case inUnitTicket = "InUnitTicket"
    case commonAreaTicket = "CommonAreaTicket"
    case moveTicket = "MoveTicket"
    case turnoverTicket = "TurnoverTicket"
    case reservation = "Reservation"
    case package = "Package"
    case task = "Task"
    case visitor = "Visitor"
    case dryCleaningOrder = "DryCleaningOrder"
    case invoice = "Invoice"
}

public enum AppNotificationTypes_: String, Decodable {
    case message = "Message"
    case notification = "Notification"
    case sessionUpdate = "SessionUpdate"
    case notificationCounter = "NotificationCounter"
}

public struct AppNotification: Decodable {
    public let id: Int?
    public let notifiable_id: Int?
    public let notifiable_type: AppNotificationTypes?
    public let message: String?
    public let read: Bool?
    public let from_management: Bool?
    public let owner: User?
    public let created_at: String?
    public let unread_count: Int?
    public let type: AppNotificationTypes_?
    public let dvora_credit_balance: Int
    public let notification_counter: UnreadNotificationsObj?
}

public struct UnreadNotificationsObj: Decodable {
    public let unread_carte_booking: [Int]?
    public let unread_conversation: [Int]?
    public let unread_ticket: [Int]?
}

public struct NotificationsGETResponseMeta: Decodable {
    public let unread_count: Int
    public let count: Int
}
    
public struct NotificationsGETResponse: Decodable {
    public let meta: NotificationsGETResponseMeta
    public let notifications: [AppNotification]
}

