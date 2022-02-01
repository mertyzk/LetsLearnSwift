import UIKit

enum Colors{
    case White
    case Black
}

var color = Colors.Black

switch color{
    case .White:
        print("#FFFFF")
    case .Black:
        print("#00000")
}

enum PreservesSize{
    case Small
    case Medium
    case Large
}


func Price(size:PreservesSize){
    switch size{
        case .Medium:
            print("Medium size: " , 10*2)
        case .Small:
            print("Small size: " , 10*3)
        case .Large:
            print("Large size: " , 10*4)
    }
}

var size = PreservesSize.Medium

Price(size: .Small)
