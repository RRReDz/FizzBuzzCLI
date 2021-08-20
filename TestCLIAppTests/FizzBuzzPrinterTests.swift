//
//  FizzBuzzPrinterTests.swift
//  TestCLIAppTests
//
//  Created by Riccardo Rossi on 20/08/21.
//

import XCTest

class FizzBuzzStringsMaker {
    private let completion: ([String]) -> Void
    private let numbers: [Int]
    
    init(numbers: [Int] = [], completion: @escaping ([String]) -> Void) {
        self.numbers = numbers
        self.completion = completion
    }
    
    func run() {
        completion(numbers.map { String($0) })
    }
}

class FizzBuzzPrinterTests: XCTestCase {

    func test_init_doesNotCallCompletionResult() {
        var completionCallsCount = 0
        _ = FizzBuzzStringsMaker { _ in completionCallsCount += 1 }
        
        XCTAssertEqual(completionCallsCount, 0)
    }
    
    func test_run_forNoNumbersProducesEmptyResult() {
        var strings: [String]?
        let sut = FizzBuzzStringsMaker(numbers: []) { strings = $0 }
        
        sut.run()
        
        XCTAssertEqual(strings, [])
    }

    func test_run_forNumberOneProducesOneAsResult() {
        var strings: [String]?
        let sut = FizzBuzzStringsMaker(numbers: [1]) { strings = $0 }
        
        sut.run()
        
        XCTAssertEqual(strings, ["1"])
    }
}
