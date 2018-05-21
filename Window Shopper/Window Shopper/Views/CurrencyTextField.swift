//
//  CurrencyTextField.swift
//  Window Shopper
//
//  Created by Sehajbir Randhawa on 5/20/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        self.backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2472442209)
        layer.cornerRadius = 5
        textAlignment = .center
        
        if placeholder == nil{
            placeholder = " "
        }
        
        let p = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = p
        let t = NSAttributedString(string: self.text!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedText = t
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2472442209)
        layer.cornerRadius = 5
        textAlignment = .center
        
        if placeholder == nil{
            placeholder = " "
    }
        
        let p = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = p
        let t = NSAttributedString(string: self.text!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedText = t
    

}

}
