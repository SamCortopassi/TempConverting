//
//  ConversionViewController.swift
//  TempConverting
//
//  Created by Samantha Cortopassi on 1/30/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    var fahrenheitValue: Measurement<UnitTemperature>? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            celsiusLabel.text = "\(celsiusValue.value)"
        } else {
                celsiusLabel.text = "???"
        }
    }
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
//        if let text = textField.text, !text.isEmpty {
//            celsiusLabel.text = text
//        } else {
//            celsiusLabel.text = "???"
//        }
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }
    
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
}
