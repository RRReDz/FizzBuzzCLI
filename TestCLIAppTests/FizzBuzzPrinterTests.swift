//
//  FizzBuzzPrinterTests.swift
//  TestCLIAppTests
//
//  Created by Riccardo Rossi on 20/08/21.
//

import XCTest

class FizzBuzzStringsMaker {
    private let completion: ([String]) -> Void
    
    init(completion: @escaping ([String]) -> Void) {
        self.completion = completion
    }
}

class FizzBuzzPrinterTests: XCTestCase {

    func test_init_doesNotCallCompletionResult() {
        var completionCallsCount = 0
        _ = FizzBuzzStringsMaker { _ in completionCallsCount += 1 }
        
        XCTAssertEqual(completionCallsCount, 0)
    }

}
