//
//  main.swift
//  TestCLIApp
//
//  Created by Riccardo Rossi on 20/08/21.
//

import Foundation
import FizzBuzzParser

let zeroToOneUndredNumbers = Array(1...100)
let printerCompletion = { (stringResults: [String]) in
    stringResults.forEach {
        print("\($0)")
    }
}

let fizzBuzz = FizzBuzzParser(
    numbers: zeroToOneUndredNumbers,
    completion: printerCompletion)

fizzBuzz.run()

