//
//  Employee.swift
//  MAD3004_TeamMaple
//

import Foundation

class Employee {
    
    //necessary variables
    private var _name : String
    private var _birthYear : Int
    private var _age : Int;
    private var _monthlyIncome : Double
    private var _rate : Int = 100;
    private var _employeeVehicle : Vehicle;
    
    //defining setter & getter
    var name: String {
        get { return _name }
        set { _name = newValue }
    }
    
    var birthYear: Int {
        get { return _birthYear }
        set { _birthYear = newValue }
    }
    
    var age: Int {
        get { return _age }
        set { _age = newValue }
    }
    
    var monthlyIncome: Double {
        get { return _monthlyIncome }
        set { _monthlyIncome = newValue }
    }
    
    var rate: Int {
        get {
            if(self.rate < 10){
                return 10;
            }else if(self.rate > 100){
                return 100;
            }
            return _rate
        }
        set { _rate = newValue }
    }
    
    
    var employeeVehicle: Vehicle {
        get { return _employeeVehicle }
    }
}
