import UIKit
import Foundation

// EXAMPLE 1
func DegreeToFahrenheit(derece:Double) -> Double{
    let fahrenheit = (derece*1.8) + 32
    return fahrenheit
}

var result = DegreeToFahrenheit(derece: 33.2)
print("Degree to Fahrenheit: \(result)")

//EXAMPLE2
func PerimeterOfRectangle(shortEdge:Int, longEdge:Int) -> Int{
    let perimeter = 2*(shortEdge+longEdge)
    return perimeter
}

var result2 = PerimeterOfRectangle(shortEdge: 15, longEdge: 25)
print("perimeter of rectangle: \(result2)")

//EXAMPLE3
func FactorialCalculate(number:Int) -> Int{
    var factorial = 1
    for i in 1...number{
        factorial = factorial*i
    }
    return factorial
}

let result3 = FactorialCalculate(number: 5)
print("Factorial result: \(result3)")


//EXAMPLE4

func WordAndChar(word:String,char:Character){
    var sonuc = 0
    for w in word{
        if w == char{
            sonuc += 1
        }
    }
    print("Harf sayısı: \(sonuc)")
}

let cevap = WordAndChar(word: "abdurrahman", char: "a")

//EXAMPLE5

func SumOfInteriorAngles(anglesNumber:Int) -> Int {
    let sumAngles = (anglesNumber-2)*180
    return sumAngles
}

let result4 = SumOfInteriorAngles(anglesNumber: 6)
print(result4)

//EXAMPLE6

func SalaryCalculation(dayNumber:Int) -> Int {
    let workingHour = 8 * dayNumber
    let hourlyWage = 10
    let overTime = 20
    var salary = 1
    if workingHour > 160 {
        let mesaiFazlasi = overTime * (workingHour - 160)
        salary = (160 * hourlyWage) + (mesaiFazlasi)
    }
    else{
        salary = workingHour * hourlyWage
    }
    return salary
}
var maas = SalaryCalculation(dayNumber: 22)
print(maas)

//EXAMPLE7

func KotaHesaplama(kota:Int) -> Int {
    var fatura = 0
    if kota<=50 {
        fatura = 50
    }
    else if kota>50{
        let asimMiktari = (kota-50)*4
        fatura = 100 + asimMiktari
    }
    return fatura
}

let faturam = KotaHesaplama(kota: 55)
print(faturam)
