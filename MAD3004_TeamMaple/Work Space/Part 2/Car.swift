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
}
