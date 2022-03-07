import UIKit

// default func

func showMessage(message:String = "Default message"){
    print("New message")
    print("incoming message : \(message)")
}

showMessage(message: "test")

func calc(a:Int, b:Int = 2)->Int{
    
    let result = a * b
    return result
}

print(calc(a: 2, b: 7))
print(calc(a: 5))

// Variadic Func

func calcClassAvg(results: [Double]) -> Double{
    var result : Double = 0
    for number in results{
        result += number
    }
    return result / Double(results.count)
}

var results : [Double] = [10,20,30,40,50,60]
var avg = calcClassAvg(results: results)
print("\(avg)")


func classAvgCalc(parameters : Double...) -> Double{
    var top : Double = 0
    for numb in parameters{
        top += numb
    }
    return top / Double(parameters.count)
}
print(classAvgCalc(parameters: 10,20,30,40,50,60))
