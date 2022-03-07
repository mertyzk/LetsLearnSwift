import UIKit

func valueTrade(s1 : inout Int, s2 : inout Int){
    var temp = s1
    s1 = s2
    s2 = temp
}

var n1 : Int = 4
var n2 : Int = 5
print("old n1 value: \(n1)")
print("old n2 value \(n2)")
valueTrade(s1: &n1, s2: &n2)
print("new n1 value: \(n1)")
print("new n2 value \(n2)")

func ikiyeKatla(s1: inout Int, s2 : inout Int){
    s1 = s1 * 2
    s2 *= 2
}

func ikiyeKatla(numbers: inout [Int]){
    for i in (0...(numbers.count-1)){
        numbers[i] *= 2
    }
}

var s1 = 3, s2 = 4, s3 = 5
ikiyeKatla(s1: &s1, s2: &s2)
print("number 1 value: \(s1)")
print("number 2 value: \(s2)")
var values =  [3,7,s3]
ikiyeKatla(numbers: &values)
for value in values{
    print(value)
}
