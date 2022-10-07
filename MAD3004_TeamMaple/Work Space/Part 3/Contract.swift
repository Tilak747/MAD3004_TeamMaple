//
//  Contract.swift
//  MAD3004_TeamMaple
//
//  Created by Tilak Acharya on 2022-10-07.
//

import Foundation

class Contract {

}

protocol EmployeeContract {
    var contract : Contract? { get set }

    func signContract(contract : Contract)
    func contractInfo() -> Contract?
}

extension Employee : EmployeeContract {
    var contract: Contract? {
        get {
           return contract
        }
        set {
            newValue
        }
    }
        
    func signContract(contract: Contract) {
        self.contract = contract
    }
    
    func contractInfo() -> Contract? {
        return self.contract ?? nil
    }
}
