//
//  Core.swift
//  dvora.mobile.basics.data-layer
//
//  Created by Gabriel Armando Prieto on 8/10/21.
//

import Foundation

open class Core {
    //MARK: - Private Members
    
    //MARK: - Public Properties
    public static var LoggedUser: User?
    
    //MARK: - Internal Methods / Classes
    private struct LoginPOST: Encodable {
        var email: String
        var password: String
        
        init(_ email: String, _ password: String) {
            self.email = email
            self.password = password
        }
    }
    
    /// To Be use from Framework .manager.data-layer, .resident.data-layer
    public static func login(_ email: String, _ password: String, _ onSuccess: @escaping (_ response: LoginResponse) -> Void, _ onError: @escaping errorHandler, _ onChangePassword: @escaping () -> Void) {
        Http.post(to: "sessions", payload: LoginPOST(email, password)) { (result: Result<LoginResponse?, ErrorHandler>) in
            switch(result) {
            case .success(let value):
                if let r = value {
                    if let error = r.errors {
                        onError(error[0])
                    }
                    else if (r.meta?.password_reset ?? false) {
                        // TODO: Pending the info needed in order to do password change...
                        onChangePassword()
                    }
                    else {
                        onSuccess(r)
                    }
                    
                    return
                }
                
                onError("Unknow Error")
                break
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
