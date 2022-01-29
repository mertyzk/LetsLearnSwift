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
var sum = print(numberOne + numberTwo)
