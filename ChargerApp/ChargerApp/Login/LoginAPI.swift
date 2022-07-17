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
    var loginModel : LoginModel?
    func fetchLogin(email : String, udid : String) {

        let parameters = [
            "email": email,
            "deviceUDID": udid
        ]
        
        Alamofire.request(Constants.LoginURL, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
               //print(response)
               guard let data = response.data else { return }
               do {
                   let decoder = JSONDecoder()
                   let model = try decoder.decode(LoginModel.self, from: data)
                   self.loginModel = model // set data login model
                  
               } catch let error {
                   print(error)
               }
            }
    }
}
