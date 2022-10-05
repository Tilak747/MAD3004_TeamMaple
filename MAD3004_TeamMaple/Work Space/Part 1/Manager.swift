//
//  Manager.swift
//  MAD3004_TeamMaple
//

import Foundation

class Manager: Employee {
    
    private var _nbTravelDays: Int=0;
    private var _nbClients : Int=0;
    
    var nbTravelDays: Int {
        get { return _nbTravelDays }
        set { _nbTravelDays = newValue }
    }

    var nbClients: Int {
        get { return _nbClients }
        set { _nbClients = newValue }
    }
    
    func printMessage() {
        printData("We have a new employee: \(name), a manager.")
//        print("We have a new employee: \(name), a manager");
    }


}
