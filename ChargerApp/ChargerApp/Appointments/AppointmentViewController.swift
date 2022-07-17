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
        
        navigationBarLeftItem()
        
    }
    
    // MARK: Navigation bar left icon set
    func navigationBarLeftItem(){
        var image = UIImage(named: "Profile")
        image = image?.withRenderingMode(.alwaysOriginal)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style:.plain, target: self, action: #selector(openProfilePage))
        
        
       
    }
 
    @objc func openProfilePage(){
        print("Profile click")
        /*let appointmentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(appointmentVC, animated: true)*/
    }

}
