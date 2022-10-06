//
//  Car.swift
//  MAD3004_TeamMaple
//

import Foundation

class Car: Vehicle {
    //defining variable
    private var _gear:String = "";
    private var _type:String = "";

    //initialisation
    init(gear:String,type:String ){
        super.init()
        self._gear = gear
        self._type = type
    }
    init(make:String,plate:String,color:String,category:String,gear:String,type:String){

        super.init(_male :make,_plate :plate,_color :color,_category :category)
        self._gear = gear
        self._type = type
    }
    
    override init() {
        super.init()
        self._gear = ""
        self._type = ""
    }
   //getter and setter methods
   var gear:String{
        get{return _gear}
        set{_gear = newValue}
    }
    var type:String{
        get{return _type}
        set{_type = newValue}
    }


}
