//
//  Motorcycle.swift
//  MAD3004_TeamMaple
//

import Foundation

class Motorcycle: Vehicle {
    //defining variable
    private var _sidecar:Bool = false;

    //initialisations
    init(sidecar:Bool){
        super.init()
        self._sidecar = sidecar
    }
    init(make:String, plate:String, color:String ,category:String ,sidecar:Bool){

        super.init(_make:make,_plate:plate,_color:color ,_category:category)
        self._sidecar=sidecar
    }

    var sidecar:Bool{
        get{return _sidecar}
        set{_sidecar=newValue}

    }
    override init(){
        super.init()
        self._sidecar=false
    }
}

extension Motorcycle {
    override var description: String {
        let a = """
        \n\t- \(sidecar ? "with" : "without") sidecar
        """
        return super.description + a
    }
}

