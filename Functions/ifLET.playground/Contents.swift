import UIKit

var s : String = "a"
var s1 = Int(s)
print(s1)

if let value = Int(s){
    print("number: \(value)")
}else{
    print("convert error")
}

var salaries : [String : Int] = ["Ahmet" : 4500, "Ali" : 5750, "Veli" : 9952]
let personName = "Ali"
let salary1 = salaries[personName]

if let salary = salaries[personName]{
    print("\(personName) salary : \(salary)")
}
else{
    print("not person")
}

var favoriteSong : String? = "Moonlight"
//favoriteSong = nil

if let parca = favoriteSong{
    print("Favorite song: \(parca)")
}else{
    print("nothing")
}

var numbers : [Double] = [10,20,30,40,50]
var firstValue = numbers.first
print(firstValue)

numbers = [5]
print(numbers.first)

if let firstElement = numbers.first{
    print(firstElement)
}else{
    print("error")
}
//

if let lastValue = numbers.last{
    let pow = pow(lastValue, 2)
    print(pow)
}else{
    print("error")
}
