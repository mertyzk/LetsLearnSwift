import UIKit

// IF

var point = 10
if point<20{
    print("true")
}

// IF - ELSE

var number1:Int = 25
var number2:Int = 35
var total:Int = number1+number2
if total<=40{
    print("true")
}
else{
    print("false")
}

// IF - ELSE IF - ELSE

if total<60{
    print("false, total<60")
}
else if total==60{
    print("true, total=60")
}
else{
    print("true, total>60")
}

//Ternary Conditional
number1 > number2 ? print("It's true") : print("It's false")

// Example Problem (Area Calculate)

print("(1) Calculate circle area")
print("(2) Calculate rectangle area")

var select = 1
let shortEdge = 10
let longEdge = 25
let radius = 4
let pi = 3.14

print("Your choice \(select)")

    if select == 1{
        print("Calculating area for circle")
        let circleArea = pi * Double(radius) * Double(radius)
        print(circleArea)
    }
    else if select == 2{
        print("Calculating area for rectangle")
        let rectangleArea = shortEdge * longEdge
        print(rectangleArea)
    }
    else{
        print("Wrong Choice")
}

// Switch Case

var importNumber = 10

switch importNumber{
    case 100 : print("importNumber = 100")
    case 10 : print("importNumber = 10")
    default : print("comparison fails")
}

// Example Switch Case - Days

let day = 5

switch day{
    case 1 : print("Monday")
    case 2 : print("Tuesday")
    case 3 : print("Wednesday")
    case 4 : print("Thursday")
    case 5 : print("Friday")
    case 6 : print("Saturday")
    case 7 : print("Sunday")
    default : print("There is no day")
}

// Example Switch Case - Basic Arithmetic Operations

let zelect = 4
let zumber1 = 12
let zumber2 = 8

switch zelect{
    case 1 : print("Sum",zumber1+zumber2)
    case 2 : print("Diff",zumber1-zumber2)
    case 3 : print("Multiplied",zumber1*zumber2)
    case 4 : print("Divide", Double(zumber1)/Double(zumber2))
    default : print("Selection is null")
}
