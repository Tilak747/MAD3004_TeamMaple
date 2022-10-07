//
//  Temporary.swift
//  MAD3004_TeamMaple
//

import Foundation

class Temporary:Contract {
    
    private var _hourlySalary:Int=0
    private var _accumulatedHours:Int=0

    var _hourlySalary:Int{
       get{return _hourlySalary}
       set{_hourlySalary=newValue}

    }

    var _accumulatedHours:Int{
        get{return _accumulatedHours}
        set{_accumulatedHours=newValue}
    }

    init(_hourlySalary:Int,_accumulatedHours:Int){
        super.init(name:"",birthYear:0)
        self._hourlySalary=_hourlySalary
        self._accumulatedHours=_accumulatedHours
    }
    override init(name:String,birthYear:Int,rate:Int=100,employeeVehicles:Vehicle?=nil){
        super.init(name:name,birthYear:birthYear)
        self._hourlySalary=hourlySalary
        self._accumulatedHours=_accumulatedHours
    }
    
        
    
}

