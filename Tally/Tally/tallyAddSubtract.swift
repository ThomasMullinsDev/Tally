//
//  tallyAddSubtract.swift
//  Tally
//
//  Created by Thomas Mullins on 2/24/24.
//

import Foundation
var countInterval: String = "1"
var startingNumber: String = "0"
var currentNumber: String = "0"
var currentOperator: String = ""

func tallyAddSubtract() -> String? {
    guard let currentNum = Int(currentNumber),
    let interval = Int(countInterval)
    else { return nil }
    var numberResult: Int
    
    switch currentOperator {
    case "+": numberResult = currentNum + interval
    case "-": numberResult = currentNum - interval
    default: return "Error"
    }
    
    return String(numberResult)
}

