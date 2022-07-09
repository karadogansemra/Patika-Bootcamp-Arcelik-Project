//
//  ViewController.swift
//  ChargerApp
//
//  Created by Semra KARADOĞAN on 3.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var epostaTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        epostaTextField.setUnderLine() // Text field set underline
        epostaTextField.changePlaceHolderColor() // Text field changed place holder color 
      
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
    
    func changePlaceHolderColor(){
        
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
