//
//  AppointmentViewController.swift
//  ChargerApp
//
//  Created by Semra KARADOĞAN on 17.07.2022.
//

import UIKit

class AppointmentViewController: UIViewController {
    var loginModel : LoginModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(loginModel?.email)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
