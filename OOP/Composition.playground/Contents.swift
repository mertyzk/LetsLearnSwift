import UIKit

class Persons{
    var name:String?
    var age:Int?
    var adress:Address?
    
    init(name:String,age:Int,adress:Address) {
        self.name = name
        self.age = age
        self.adress = adress
    }
}

class Address{
    var city:String?
    var state:String?
    
    init(city:String,state:String) {
        self.city = city
        self.state = state
    }
}

let adres = Address(city: "Ankara", state: "Çankaya")
let person = Persons(name: "Ali", age: 27, adress: adres)
print("Person name: \(person.name!)")
print("Person age: \(person.age!)")
print("Person city: \(person.adress!.city!)")
print("Person state: \(person.adress!.state!)")
