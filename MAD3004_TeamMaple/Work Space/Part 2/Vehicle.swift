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
    
    //empty initialization
    init(){
        self._make = ""
        self._plate = ""
        self._color = ""
        self._category = ""
    }
    //initialisation as per test case
    init(_make: String, _plate: String, _color: String, _category: String) {
        self._make = _make
        self._plate = _plate
        self._color = _color
        self._category = _category
    }

}
