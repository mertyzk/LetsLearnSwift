import UIKit

func findNumberSides(form: String) -> Int?{
    
    switch form{
    case "Hexagon" :
        return 6
    case "Pentagon" :
        return 5
    case "Square" :
        return 4
    case "Triangle" :
        return 3
    case "line" :
        return 1
    default:
        return nil
    }

}

func writeNumberSides(form: String){
    if let asd = writeNumberSides(form: form) {
        print("\(form)")
    }else{
        print("error")
    }
}

let k1 = "Square"
writeNumberSides(form: k1)
