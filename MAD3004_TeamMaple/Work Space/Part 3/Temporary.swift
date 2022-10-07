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
}
