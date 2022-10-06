//
//  Programmer.swift
//  MAD3004_TeamMaple
//

import Foundation

class Programmer: Employee {

    private var _nbProjects: Int=0;

    private let _GainFactorProjjects = 200
    
    var nbProjects: Int {
            get { return _nbProjects }
            set { _nbProjects = newValue }
        }

    func printMessage() {
            print("We have a new employee: \(name), a programmer");
        }

    init(name: String, birthYear: Int,nbProjects: Int) {
        super.init(name: name, birthYear: birthYear)
        self._nbProjects = nbProjects;
        printMessage()
    }

    init(name: String, birthYear: Int,nbProjects: Int,rate:Int) {
        super.init(name: name, birthYear: birthYear, rate: rate)
        self._nbProjects = nbProjects;
        printMessage()
    }
    
    init(name: String, birthYear: Int,nbProjects: Int,employeeVehicle: Vehicle) {
        super.init(name: name, birthYear: birthYear,employeeVehicle: employeeVehicle)
        self._nbProjects = nbProjects;
        printMessage()
    }

    init(name: String, birthYear: Int,nbProjects: Int,rate:Int, employeeVehicle: Vehicle) {
        super.init(name: name, birthYear: birthYear, rate: rate,employeeVehicle: employeeVehicle)
        self._nbProjects = nbProjects;
        printMessage()
    }
    
    override func annualIncome() -> Double {
        var baseYearlyIncome = (monthlyIncome * Double(12)) * Double(rate)
        var bonus = Double(_GainFactorProjjects * nbProjects)
        return baseYearlyIncome + bonus
     }

}
