//
//  main.swift
//  TestCLIApp
//
//  Created by Riccardo Rossi on 20/08/21.
//

import Foundation

let zeroToOneUndredNumbers = Array(1...100)
let printerCompletion = { (stringResults: [String]) in
    stringResults.forEach {
        print("\($0)")
    }
}

let fizzBuzzRunnable = FizzBuzzStringsMaker(
    numbers: zeroToOneUndredNumbers,
    completion: printerCompletion)

let main = TestCLIApp(runnable: fizzBuzzRunnable)

main.start()

