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

// EXAMPLE

class Ev{
    var pencereSayisi:Int?
    init(penceresayisi:Int) {
        self.pencereSayisi = penceresayisi
    }
}

class Saray:Ev{
    var kuleSayisi:Int?
    init(kuleSayisi:Int,pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(penceresayisi: pencereSayisi)
    }
}

class Villa:Ev{
    var garajVarMi:Bool?
    init(garajVarMi:Bool,pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(penceresayisi: pencereSayisi)
    }
}

var topkapi = Saray(kuleSayisi: 5, pencereSayisi: 15)
var bogazdakiVilla = Villa(garajVarMi: true, pencereSayisi: 8)


