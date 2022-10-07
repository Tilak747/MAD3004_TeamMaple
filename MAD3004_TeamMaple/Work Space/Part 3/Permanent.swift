//
//  Permanent.swift
//  MAD3004_TeamMaple
//

import Foundation

class Permanent:Contract {
    
    private var _nbChildren: Int = 0
    private var _married: Bool = false
    private var _monthlySalary: Int = 0
    private var _bonusPerChildPerMonth: Int = 0
    private var _accumulatedDays: Int = 0
    
    var nbChildren: Int {
        get { return _nbChildren }
        set { _nbChildren = newValue }
    }
    
    var married: Bool {
        get { return _married }
        set { _married = newValue }
    }
    
    var monthlySalary: Int {
        get { return _monthlySalary }
        set { _monthlySalary = newValue }
    }
    
    var bonusPerChildPerMonth: Int {
        get { return _bonusPerChildPerMonth }
        set { _bonusPerChildPerMonth = newValue }
    }
    
    var accumulatedDays: Int {
        get { return _accumulatedDays }
        set { _accumulatedDays = newValue }
    }
    
    override init(name:String,birthYear:Int,rate:Int=100,employeeVehicles:Vehicle=nil){
        super.init(name:name,birthYear:birthYear)
        self._nbChildren=nbChildren
        self._married=married
        self._monthlySalary=monthlySalary
        self._bonusPerChildPerMonth=bonusPerChildPerMonth
        self.accumulatedDays=accumulatedDays
    }
}
