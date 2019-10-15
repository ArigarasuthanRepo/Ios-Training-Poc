//
//  Validation.swift
//  Myapp
//
//  Created by Deemsys on 10/7/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import Foundation

class Validation {
    
    public func validateEmail(email:String) ->Bool {
        let emailRegx = "[A-z0-9a-z._%+-]+@[A-z0-9a-z.-]+\\.[A-Za-z]{2,64}"
        let trimmedString = email.trimmingCharacters(in: .whitespaces)
        let validateEmail = NSPredicate(format: "SELF MATCHES %@", emailRegx)
        let isValidateEmail = validateEmail.evaluate(with: trimmedString)
        return isValidateEmail
        
    }
}
