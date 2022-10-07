//
//  Tester.swift
//  MAD3004_TeamMaple
//

import Foundation

class Tester: Employee {
    private var _nbBugs: Int=0;
    
    private let _GainFactorError = 10
    
    var nbBugs: Int {
            get { return _nbBugs }
            set { _nbBugs = newValue }
        }

    func printMessage() {
        printData("We have a new employee: \(name), a tester")
//        print("We have a new employee: \(name), a tester");
    }
    
    init(name: String, birthYear: Int,nbBugs: Int,rate:Int) {
        super.init(name: name, birthYear: birthYear, rate: rate)
        self._nbBugs = nbBugs;
        printMessage()
    }
    
    init(name: String, birthYear: Int,nbBugs: Int,rate:Int, employeeVehicle: Vehicle) {
        super.init(name: name, birthYear: birthYear, rate: rate,employeeVehicle: employeeVehicle)
        self.nbBugs = nbBugs;
        printMessage()
    }
    
    override func annualIncome() -> Double {
        var baseYearlyIncome = (monthlyIncome * Double(12)) * Double(rate)
        var bonus = Double(_GainFactorError * nbBugs)
        return baseYearlyIncome + bonus
     }
}

extension Tester {
    override var description: String {
        let a =
        """
        Name: \(name), a Tester \n
        """
        
        return a + super.description
    }
}

