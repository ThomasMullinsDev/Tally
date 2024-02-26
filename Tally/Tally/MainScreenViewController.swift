//
//  ViewController.swift
//  Tally
//
//  Created by Thomas Mullins on 2/23/24.
//

import UIKit

class MainScreenViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var tallyLabel: UILabel!
    
    @IBOutlet weak var startingNumberTextField: UITextField!
    
    @IBOutlet weak var countIntervalTextField: UITextField!
    
    override func viewDidAppear(_ animated: Bool) {
        tallyLabel.text = currentNumber
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        tallyLabel.text = currentNumber
        return nil
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.transitioningDelegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tallyLabel.text = currentNumber
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        tallyLabel.text = startingNumber
        currentNumber = startingNumber
    }
    
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        currentOperator = sender.titleLabel?.text ?? ""
        currentNumber = tallyAddSubtract() ?? ""
        tallyLabel.text = currentNumber
        }
}


