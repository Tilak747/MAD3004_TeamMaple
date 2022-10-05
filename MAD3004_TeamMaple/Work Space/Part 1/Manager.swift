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
    
    
    init(name: String, birthYear: Int,nbClients: Int,nbTravelDays: Int) {
        super.init(name: name, birthYear: birthYear)
        self._nbTravelDays = nbTravelDays;
        self._nbClients = nbClients;
        printMessage()
    }
    init(name: String, birthYear: Int,nbClients: Int,nbTravelDays: Int,rate:Int) {
        super.init(name: name, birthYear: birthYear, rate: rate)
        self._nbTravelDays = nbTravelDays;
        self._nbClients = nbClients;
        printMessage()
    }
    init(name: String, birthYear: Int,nbClients: Int,nbTravelDays: Int, employeeVehicle: Vehicle) {
        super.init(name: name, birthYear: birthYear,employeeVehicle: employeeVehicle)
        self._nbTravelDays = nbTravelDays;
        self._nbClients = nbClients;
        printMessage()
    }
    init(name: String, birthYear: Int,nbClients: Int,nbTravelDays: Int,rate:Int, employeeVehicle: Vehicle) {
        super.init(name: name, birthYear: birthYear,rate: rate,employeeVehicle: employeeVehicle)
        self._nbTravelDays = nbTravelDays;
        self._nbClients = nbClients;
        printMessage()
    }

    
    
    func printMessage() {
        printData("We have a new employee: \(name), a manager.")
//        print("We have a new employee: \(name), a manager");
    }


}
