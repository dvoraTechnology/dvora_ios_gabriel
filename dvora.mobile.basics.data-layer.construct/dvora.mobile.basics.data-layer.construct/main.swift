//
//  main.swift
//  dvora.mobile.basics.data-layer.construct
//
//  Created by Gabriel Armando Prieto on 28/09/21.
//

import Foundation
import dvora_mobile_manager_data_layer
import dvora_mobile_basics_data_layer

let success = { (user: User) in print("Success...") }
let error = { (errorMessage: String) in print("Error: \(errorMessage)") }
let changePassword = { print("Change Password...") }

// Case 1: Valid User
Core.login(email: "jose@dvoralife.com", password: "12345678", onSuccess: success, onError: error, onChangePassword: changePassword)

// Case 2: Needs change password, since this is a user we use in develop (reset your own user to test if throws you invalid password message)
//Core.login(email: "frontendweb1@dvoralife.com", password: "29b27dec", onSuccess: success, onError: error, onChangePassword: changePassword)

// Case 3: Resident
//Core.login(email: "bsiegel2008@g8p3c.com", password: "12345678", onSuccess: success, onError: error, onChangePassword: changePassword)


let response = readLine()
