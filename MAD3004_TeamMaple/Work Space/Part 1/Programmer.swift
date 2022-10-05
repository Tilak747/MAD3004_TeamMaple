//
//  Programmer.swift
//  MAD3004_TeamMaple
//

import Foundation

class Programmer: Employee {

    private var _nbProjects: Int=0;

    var nbProjects: Int {
            get { return _nbProjects }
            set { _nbProjects = newValue }
        }

    func printMessage() {
            print("We have a new employee: \(name), a programmer");
        }

}
