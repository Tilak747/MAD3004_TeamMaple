//
//  Vehicle.swift
//  MAD3004_TeamMaple
//

import Foundation

class Vehicle {
    
    //defining the variables
    private var _make: String = "";
    private var _plate: String = "";
    private var _color: String = "";
    private var _category: String = "";

    //getters for vehicle
    var make:String{
        get{return _make}
    }
    var plate:String{
        get{return _plate}
    }
    var color:String{
        get{return _color}
    }
    var category:String{
        get{return _category}
    }

}
