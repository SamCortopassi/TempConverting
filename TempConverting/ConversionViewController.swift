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
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            celsiusLabel.text = text
        } else {
            celsiusLabel.text = "???"
        }
    }
}
