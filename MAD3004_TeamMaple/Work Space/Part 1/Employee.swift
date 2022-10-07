//
//  Employee.swift
//  MAD3004_TeamMaple
//

import Foundation

class Employee {
    
    //necessary variables
    private var _name : String
    private var _birthYear : Int
    private var _age : Int
    private var _monthlyIncome : Double
    private var _rate : Int = 100
    private var _employeeVehicle : Vehicle?
    
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
                return 10
            }else if(self.rate > 100){
                return 100
            }
            return _rate
        }
        set { _rate = newValue }
    }
    
    
    var employeeVehicle: Vehicle? {
        get { return _employeeVehicle }
    }
    
    //empty initialization
    init(){
        self._name = ""
        self._birthYear = 2000
        self._age = 0
        self._monthlyIncome = 0;
        self._rate = 0;
        self._employeeVehicle = Car()
    }

    //initialisation as per test case
    init(name: String) {
        self._name = name;
        self._birthYear = 0;
        self._age = 0
        self._monthlyIncome = 0;
        self._rate = 0;
        self._employeeVehicle = Car()
    }
    
    init(name: String,birthYear:Int) {
        self._name = name;
        self._birthYear = birthYear;
        self._age = 0
        self._monthlyIncome = 0;
        self._rate = 0;
        self._employeeVehicle = Car()
    }
    
    init(name: String,birthYear:Int,rate: Int) {
        self._name = name;
        self._birthYear = birthYear;
        self._age = 0
        self._monthlyIncome = 0;
        if(rate < 10) {
            self._rate = 10
        }
        else if (rate > 100){
            self._rate = 100
        }
        else {
            self._rate = rate
        }
        self._employeeVehicle = Car()
    }
    
    init(name: String,birthYear:Int,employeeVehicle: Vehicle) {
        self._name = name;
        self._birthYear = birthYear;
        self._age = 0
        self._monthlyIncome = 0;
        self._employeeVehicle = employeeVehicle
    }
    
    init(name: String,birthYear:Int,rate: Int,employeeVehicle: Vehicle? = nil) {
        self._name = name;
        self._birthYear = birthYear;
        self._age = 0
        self._monthlyIncome = 0;
        if(rate < 10) {
            self._rate = 10
        }
        else if (rate > 100){
            self._rate = 100
        }
        else {
            self._rate = rate
        }
        if let employeeVehicle = employeeVehicle {
            self._employeeVehicle = employeeVehicle
        }
    }
    //end of initialisation as per test case
    
    
    func calculateAge(birthYear: Int) -> Int {
        
        if birthYear > 0 {
            let date = Date()
            let currentYear = Calendar.current.component(.year, from: date)
            return currentYear - birthYear
        }
        
        return 0
    }
    
    func printData(_ msg :String){
        print(msg)
    }
    
    func annualIncome() -> Double {
        var baseYearlyIncome = (monthlyIncome * Double(12)) * Double(rate)
        return baseYearlyIncome
     }
}

//MARK: - Employee Extension
extension Employee : CustomStringConvertible {
    @objc var description: String {

        let a =
        """
        Age: \(age)
        \(employeeVehicle ?? Vehicle())
        """
        
        return a
    }
}

