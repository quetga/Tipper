//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tipPercent = 0.0
    var billAmount = 0.00
    var totalPeople = 0.0
    var billDue = 0.00
    
    

    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    
    @IBAction func tipChanged(_ sender: UIButton){
        sender.isSelected.toggle()
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if twentyPctButton.isSelected {
            tipPercent = 0.2
           
        }
        if tenPctButton.isSelected {
            tipPercent = 0.1
            
        }
        if zeroPctButton.isSelected {
            tipPercent = 0.0
            
        }
        billAmount = Double(billTextField.text!)!
            totalPeople = Double(splitNumberLabel.text!)!
        billDue =  ((billAmount * tipPercent) + billAmount) / totalPeople
        totalLabel.text = (String(format: "%.2f", billDue))
    }
}

