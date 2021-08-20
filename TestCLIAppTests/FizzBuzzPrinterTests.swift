//
//  FizzBuzzPrinterTests.swift
//  TestCLIAppTests
//
//  Created by Riccardo Rossi on 20/08/21.
//

import XCTest

class FizzBuzzPrinterTests: XCTestCase {

    func test_init_doesNotCallCompletionResult() {
        var completionCallsCount = 0
        _ = FizzBuzzStringsMaker { _ in completionCallsCount += 1 }
        
        XCTAssertEqual(completionCallsCount, 0)
    }
    
    func test_run_forNoNumbersProducesEmptyResult() {
        let sut = FizzBuzzStringsMaker(numbers: []) { XCTAssertEqual($0, []) }
        
        sut.run()
    }
    
    func test_run_forSequenceMadeByMultiplesOfThreeButNotFiveProducesFizzResultStrings() {
        let numbers = [3, 6, 9, 12, 18, 21, 24, 27]
        
        let sut = FizzBuzzStringsMaker(numbers: numbers) { strings in
            XCTAssertEqual(strings, [String](repeating: "Fizz", count: numbers.count))
        }
        
        sut.run()
    }
    
    func test_run_forSequenceMadeByMultiplesOfFiveButNotThreeProducesBuzzResultStrings() {
        let numbers = [5, 10, 20, 25, 35, 40, 50]
        
        let sut = FizzBuzzStringsMaker(numbers: numbers) { strings in
            XCTAssertEqual(strings, [String](repeating: "Buzz", count: numbers.count))
        }
        
        sut.run()
    }
    
    func test_run_forSequenceMadeByMultiplesOfFiveAndThreeProducesFizzBuzzResultStrings() {
        let numbers = [15, 30, 45, 60, 75, 90]
        
        let sut = FizzBuzzStringsMaker(numbers: numbers) { strings in
            XCTAssertEqual(strings, [String](repeating: "FizzBuzz", count: numbers.count))
        }
        
        sut.run()
    }
    
    func test_run_forSequenceMadeByNotMultiplesOfFiveOrThreeOrBothProducesRelativeNumberResultStrings() {
        var strings: [String]?
        let numbers = [1, 2, 4, 7, 8, 11, 13, 14, 16, 17, 19, 22, 23, 26, 28, 29]
        let sut = FizzBuzzStringsMaker(numbers: numbers) { strings = $0 }
        
        sut.run()
        
        XCTAssertEqual(strings, numbers.map(String.init))
    }
}
