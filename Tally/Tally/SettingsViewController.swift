//
//  SettingsViewController.swift
//  Tally
//
//  Created by Thomas Mullins on 2/26/24.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var startingNumberTextField: UITextField!
    
    @IBOutlet weak var countIntervalTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func resetButtonPressed(_ sender: UIButton) {
        startingNumber = "0"
        countInterval = "1"
        currentNumber = "0"
        currentOperator = ""
    }
    
    @IBAction func startingNumberSetButton(_ sender: UIButton) {
        startingNumber = startingNumberTextField.text ?? "0"
        currentNumber = startingNumber
    }
    
    @IBAction func countIntervalSetButton(_ sender: UIButton) {
        countInterval = countIntervalTextField.text ?? "1"
    }
    
}
