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
    
    AF.request(Constants.LoginURL, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseData { response in
                switch response.result {
                    case .success(let data):
                        do {
                            guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                                print("Error: Cannot convert data to JSON object")
                                return
                            }
                            guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                                print("Error: Cannot convert JSON object to Pretty JSON data")
                                return
                            }
                            guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                                print("Error: Could print JSON in String")
                                return
                            }

                            print(prettyPrintedJson)
                        } catch {
                            print("Error: Trying to convert JSON data to string")
                            return
                        }
                    case .failure(let error):
                        print(error)
            }
        }
}
}
