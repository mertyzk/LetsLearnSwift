import UIKit

class Vehicle {
    var color:String?
    var gearbox:String?
    
    init(color:String, gearbox:String) {
        self.color = color
        self.gearbox = gearbox
    }
}

class Car:Vehicle{
    var type:String?
    
    init(type:String, color:String, gearbox:String) {
        self.type = type
        super.init(color: color, gearbox: gearbox)
    }
}

class Mercedes:Vehicle{
    var model:String?
    init(model:String,type:String,color:String,gearbox:String) {
        self.model=model
        super.init(color: color, gearbox: gearbox)
    }
}

var car = Car(type: "Hatchback", color: "Red", gearbox: "Manuel")
