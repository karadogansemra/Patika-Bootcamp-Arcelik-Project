//
//  LoginAPI.swift
//  ChargerApp
//
//  Created by Semra KARADOĞAN on 9.07.2022.
//
//


import Foundation
import Alamofire

class LoginAPI {

var email:String!
var udid:String!

    func fetchLogin(email : String, udid : String) {

        let parameters = [
            "email": email,
            "deviceUDID": udid
        ]
        
        Alamofire.request("http://ec2-18-197-100-203.eu-central-1.compute.amazonaws.com:8080/auth/login", method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
            }
    }
}
