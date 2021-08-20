//
//  TestCLIAppTests.swift
//  TestCLIAppTests
//
//  Created by Riccardo Rossi on 20/08/21.
//

import XCTest
import TestCLIApp

class TestCLIApp {
    private let runnable: Runnable
    
    init(runnable: Runnable) {
        self.runnable = runnable
    }
    
    func start() {
        runnable.run()
    }
}

protocol Runnable {
    func run()
}

class TestCLIAppTests: XCTestCase {

    func test_init_doesNotCallRunnableRunCommand() {
        let runnable = RunnableSpy()
        _ = TestCLIApp(runnable: runnable)
        
        XCTAssertEqual(runnable.runCallsCount, 0)
    }
    
    func test_start_callsRunnableRunCommandOnce() {
        let runnable = RunnableSpy()
        let sut = TestCLIApp(runnable: runnable)
        
        sut.start()
        
        XCTAssertEqual(runnable.runCallsCount, 1)
    }
    
    //MARK: Utils
    
    private final class RunnableSpy: Runnable {
        var runCallsCount: Int = 0
        
        func run() {
            runCallsCount += 1
        }
    }
}
