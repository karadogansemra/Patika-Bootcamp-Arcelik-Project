//
//  UnderlineTextField.swift
//  ChargerApp
//
//  Created by Semra KARADOĞAN on 8.07.2022.
//

import Foundation

import ReactiveKit

class UnderlinedTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        reactive.controlEvents(.editingDidBegin).map { _ in
            return UIColor.green
        }.bind(to: underlineView.reactive.backgroundColor).dispose(in: reactive.bag)
        
        reactive.controlEvents(.editingDidEnd).map { _ in
            return UIColor.lightGray
        }.bind(to: underlineView.reactive.backgroundColor).dispose(in: reactive.bag)
    }
}
