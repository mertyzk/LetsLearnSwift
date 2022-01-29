import UIKit

var studentName = "Mert"
var studentAge = 27
var studentSize = 1.90

print(studentName, studentAge, studentSize)

//Separator

print(studentName, studentAge, studentSize, separator: "-")

//String \() using

print ("\(studentName) Swift is Learning. He is \(studentAge) years old and \(studentSize) meters tall.")

//Type designation

var testName:String = "TestName"
var testInteger:Int = 15
var testDouble:Double = 9.99

//Value assignment

var testValue:Int?
testValue = 15
print(testValue!)

//Value change

testValue = 8
print(testValue!)

//Passing the variable result to a new variable

var numberOne = 5
var numberTwo = 7
var sum = numberOne + numberTwo
print(sum)

//Variables scope

class TestScope{
    
    var x = 11 // Global variable
    var y = 22 // Global variable
    
    func total() {
        var x = 40 // Local variable
        
        x = x+y // 40 + 22
        print(x)
    }
}

var t = TestScope()
t.total()

// Constant

let numberThree = 3
let numberFourDouble:Double = 4.4

// Escape Characters

print("Hello. \\ test") // \\ -> \
print("Hello. Tab \t test") // \t -> + tab
print("Hello. \n test ") // \n -> down one line
print("Hello \" test \"") // \" -> " write
print("Hello \' test \'") // \' -> ' write

// Arithmetic Operators

/* Example shortening
 a = a + 3
 a += 3
 
 b = b * 3
 b* = 3
 
 c = c - 3
 c -= 3
 
 d = d / 3
 d /= 3
 */

// Type Conversion

// Numeric to Numeric

var i:Int = 42
var d:Double = 17.77
var f:Float = 39.56

var result1:Int = Int(d) // double to float
var result2:Double = Double(i) // int to double
var result3:Int = Int(f) // float to int

print(result1)
print(result2)
print(result3)

// Numeric to string

var str1 = String(i)
var str2 = String(d)
var str3 = String(f)

print(str1)
print(str2)
print(str3)

// String to numeric

var word1 = "34"
if let word1 = Int(word1){
    print(word1)
}

var errorWord1 = "T56"
if let errorWord1 = Int(errorWord1){
    print(errorWord1)
}

// Tuples

var personTuples = ("Taylor","John")
var personName = personTuples.0
var personSurname = personTuples.1
// or
print(personTuples.0,personTuples.1)

var zone = (x:10,y:20)
print(zone.x,zone.y)

// Change tuples variables results

personTuples.0 = "Lucky"
personTuples.1 = "Alvaro"

print(personTuples)

var errorMessage = (404, "Not Found")
var (errorCode, magicString) = errorMessage
print(errorCode, magicString)
