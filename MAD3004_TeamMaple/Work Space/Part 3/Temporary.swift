//
//  Temporary.swift
//  MAD3004_TeamMaple
//

import Foundation

class Temporary:Contract {
    
    private var _hourlySalary:Int=0
    private var _accumulatedHours:Int=0

    var hourlySalary:Int{
       get{return _hourlySalary}
       set{_hourlySalary=newValue}
    }

    var accumulatedHours:Int{
        get{return _accumulatedHours}
        set{_accumulatedHours=newValue}
    }

    init(_hourlySalary:Int,_accumulatedHours:Int){
        self._hourlySalary=_hourlySalary
        self._accumulatedHours=_accumulatedHours
    }
    
    func accumulatedSalary() -> Int {
        let salary = hourlySalary * accumulatedHours
        return salary
    }    
}

