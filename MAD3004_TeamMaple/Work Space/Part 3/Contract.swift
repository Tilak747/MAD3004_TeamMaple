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
    
    private static var _contract : Contract?
    
    var contract: Contract? {
        get { return Employee._contract }
        set { Employee._contract = newValue }
    }
        
    func signContract(contract: Contract) {
        self.contract = contract
    }
    
    func contractInfo() -> Contract? {
        return self.contract ?? nil
    }
}
