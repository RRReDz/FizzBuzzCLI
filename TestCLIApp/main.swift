//
//  main.swift
//  TestCLIApp
//
//  Created by Riccardo Rossi on 20/08/21.
//

import Foundation

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

private final class NullRunnable: Runnable {
    func run() {}
}

let main = TestCLIApp(runnable: NullRunnable())
main.start()

