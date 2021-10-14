//
//  Core.swift
//  dvora.mobile.manager.data-layer
//
//  Created by Gabriel Armando Prieto on 11/10/21.
//

import Foundation
import dvora_mobile_basics_data_layer

public class Core: dvora_mobile_basics_data_layer.Core {
    public static func login(email: String, password: String,
                             onSuccess: @escaping (_ user: User) -> Void,
                             onError: @escaping errorHandler,
                             onChangePassword: @escaping () -> Void) {
        let onLogged = { (response: LoginResponse) -> Void in
            if let managers = response.managers, managers.count > 0 {
                LoggedUser = managers[0]
                onSuccess(managers[0])
                return
            }
            
            onError("Invalid User")
            return
        }
        
        super.login(email, password, onLogged, onError, onChangePassword)
    }
}
