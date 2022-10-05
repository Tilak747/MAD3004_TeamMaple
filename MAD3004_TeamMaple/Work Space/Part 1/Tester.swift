//
//  Tester.swift
//  MAD3004_TeamMaple
//

import Foundation

class Tester: Employee {
    private var _nbBugs: Int=0;
    
    var nbBugs: Int {
            get { return _nbBugs }
            set { _nbBugs = newValue }
        }

    func printMessage() {
        printData("We have a new employee: \(name), a tester")
//        print("We have a new employee: \(name), a tester");
    }
}
