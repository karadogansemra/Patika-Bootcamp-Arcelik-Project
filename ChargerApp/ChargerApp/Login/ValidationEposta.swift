//
//  ValidationEposta.swift
//  ChargerApp
//
//  Created by Semra KARADOĞAN on 17.07.2022.
//

import Foundation
class ValidationEposta {
    
    //MARK: E-Mail Validation
    //Validate email address logic
    func isValid(email: String) -> Bool {
        //Declaring the rule of characters to be used. Applying rule to current state. Verifying the result.
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let test = NSPredicate(format: "SELF MATCHES %@", regex)
        let result = test.evaluate(with: email)
        
        return result
    }
}
