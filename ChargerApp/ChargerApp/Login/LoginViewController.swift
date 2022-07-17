//
//  ViewController.swift
//  ChargerApp
//
//  Created by Semra KARADOĞAN on 3.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var epostaTextField: UITextField!

    @IBAction func LoginButtonClick(_ sender: Any) {
        
        let validation = ValidationEposta()
        let isValidEmail: Bool = validation.isValid(email: epostaTextField.text ?? "")
        
        if(isValidEmail){
            let loginAPI = LoginAPI()
            loginAPI.fetchLogin(email: "valid_email@domain.com",udid: "deviceUDID")
        }else{
            print("Eposta is invalid!")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        epostaTextField.setUnderLine() // Text field set underline
        epostaTextField.changePlaceHolderColor() // Text field changed place holder color
        epostaTextField.changeTextColor()
        
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)
        
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
    //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}



// MARK: UITextField Extension
extension UITextField {
    
    func setUnderLine() {
        let border = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width-10, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    func changeTextColor() {
        self.textColor = UIColor(rgb: 0xB7BDCB)
    }
    
    func changePlaceHolderColor() {
        
        self.attributedPlaceholder = NSAttributedString(
            string: "E-POSTA ADRESİNİZ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(rgb: 0xB7BDCB)]
        )
    }
}

// MARK: UIColor Extension
extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
