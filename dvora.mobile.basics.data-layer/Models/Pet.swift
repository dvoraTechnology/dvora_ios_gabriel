//
//  Pet.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 12/10/21.
//

import Foundation

public enum PetSpecies: Decodable {
    case dog, cat, lizard, rabbit
}

public struct AppPet: Decodable {
    public let id: Int?
    public let fee: Int?
    public let weight: Int?
    public let species: PetSpecies?
    public let breed: String?
    public let is_esa: Bool?
    public let esa_certificate_file: ActiveStorageBlob?
}

public struct AppPetPost: Decodable {
    public let weight: Int
    public let species: PetSpecies
    public let breed: String
    public let is_esa: Bool
    public let esa_certificate: String?
}

public struct AddPets: Decodable {
    public let pets: [AppPetPost]
}
