//
//  ViewController.swift
//  Window Shopper
//
//  Created by Sehajbir Randhawa on 5/20/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

class mainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
  
    @IBOutlet weak var hoursCalc: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hoursLbl.isHidden = true
        hoursCalc.isHidden = true
        
        let calcBtn: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor=#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(mainVC.calculate), for: .touchUpInside)
        
        //wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        
        
    }

    @objc func calculate(){
        if(!((wageTxt.text!)=="") && !((priceTxt.text!)=="")){
            hoursCalc.text = "\(Int(ceil(Double(priceTxt.text!)!/Double(wageTxt.text!)!)))"
            hoursCalc.isHidden = false
            hoursLbl.isHidden = false
        }
    }
   


    @IBAction func clearCalculationsPressed(_ sender: Any) {
        wageTxt.text=""
        priceTxt.text=""
        hoursCalc.isHidden = true
        hoursLbl.isHidden = true
        
    }
}

