//
//  Attachment.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 11/10/21.
//

import Foundation

public struct AttachmentBlob: Decodable {
    public let byte_size: Int
    public let content_type: String
    public let filename: String
    public let checksum: String?
    public let metadata: AttachmentMetaData
}

public enum AttachmentMetaDataACLs: String, Decodable {
    case isPrivate = "private"
    case publicRead = "public-read"
}

public struct AttachmentMetaData: Decodable {
    public let height: Int?
    public let width: Int?
    public let analyzed: Bool?
    public let identified: Bool?
    public let acl: AttachmentMetaDataACLs?
// TODO:    public let [key: String]
}

public struct GalleryOperations: Decodable {
    public let add: [String]?
    public let remove: [Int]?
}

public struct ActiveStorageBlob: Decodable {
    public let id: Int?
    public let meta: AttachmentBlob?
    public let name: String?
    public let record_id: Int?
    public let record_type: String?
    public let thumbnail_url: String?
    public let url: String
}

public struct AttachmentPreview: Decodable {
    public let name: String
    public let size: Int
    public let type: String
    public let dataUrl: String
    public let progress: Int?
}

public struct SignedUrlObjHeaders: Decodable {
    enum CodingKeys: String, CodingKey {
        case contentType = "Content-Type"
        case contentMD5 = "Content-MD5"
    }
    
    public let contentType: String
    public let contentMD5: String
}

public struct SignedUrlObj: Decodable {
    public let url: String
    public let headers: SignedUrlObjHeaders
}

public struct GetSignedURLResponse: Decodable {
    public let direct_upload: SignedUrlObj
    public let blob_signed_id: String
}

public struct AttachmentUrl: Decodable {
    public let expiration_time: Int?
    public let folder: String
}

public struct GetSignedUrlParams: Decodable {
    public let file: AttachmentBlob
    public let url: AttachmentUrl
}

public enum UploadImageProgressEvents: String, Decodable {
    case startUploadImage = "StartUploadImage"
    case startComputeCheckSum = "StartComputeCheckSum"
    case finishComputeCheckSum = "FinishComputeCheckSum"
    case startGetSignedUrl = "StartGetSignedUrl"
    case finishGetSignedUrl = "FinishGetSignedUrl"
    case startDirectUpload = "StartDirectUpload"
    case inProgressDirectUpload = "InProgressDirectUpload"
    case finishUploadImage = "FinishUploadImage"
}

public struct UploadImageProgressEvent: Decodable {
    public let event: UploadImageProgressEvents
    public let data: String?
}

