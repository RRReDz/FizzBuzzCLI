//
//  FizzBuzzStringsMaker.swift
//  TestCLIApp
//
//  Created by Riccardo Rossi on 20/08/21.
//

import Foundation

class FizzBuzzStringsMaker: Runnable {
    private let completion: ([String]) -> Void
    private let numbers: [Int]
    
    init(numbers: [Int] = [], completion: @escaping ([String]) -> Void) {
        self.numbers = numbers
        self.completion = completion
    }
    
    func run() {
        completion(numbers.map { number in
            if number % 3 == 0 && number % 5 == 0 {
                return "FizzBuzz"
            } else if number % 3 == 0 {
                return "Fizz"
            } else if number % 5 == 0 {
                return "Buzz"
            } else {
                return String(number)
            }
        })
    }
}
