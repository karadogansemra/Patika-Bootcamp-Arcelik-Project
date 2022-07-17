//
//  LoginModel.swift
//  ChargerApp
//
//  Created by Semra KARADOĞAN on 17.07.2022.
//

import Foundation
struct LoginModel: Codable {
    
    var email : String?
    var token : String?
    var userID : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case email = "email"
        case token = "token"
        case userID = "userID"
       
    }
    
}
