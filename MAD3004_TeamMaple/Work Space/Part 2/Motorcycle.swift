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
        self _sidecar = sidecar 
    }
    init(make:String, plate:String, color:String ,category:String ,sidecar:Bool){

        super.init(_make:String,_plate:String,_color:String ,_category:String ,_sidecar:Bool)
        self._sidecar=sidecar
    }
}
