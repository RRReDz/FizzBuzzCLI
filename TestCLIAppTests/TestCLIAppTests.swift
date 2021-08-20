//
//  TestCLIAppTests.swift
//  TestCLIAppTests
//
//  Created by Riccardo Rossi on 20/08/21.
//

import XCTest
import TestCLIApp

class TestCLIApp {
    private let runnable: RunnableSpy
    
    init(runnable: RunnableSpy) {
        self.runnable = runnable
    }
}

final class RunnableSpy {
    var runCallsCount: Int = 0
}

class TestCLIAppTests: XCTestCase {

    func test_init_doesNotCallRunnableRunCommand() {
        let runnable = RunnableSpy()
        _ = TestCLIApp(runnable: runnable)
        
        XCTAssertEqual(runnable.runCallsCount, 0)
    }
    
}
