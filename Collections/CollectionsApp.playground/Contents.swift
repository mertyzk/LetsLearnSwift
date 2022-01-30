import UIKit
import Darwin

var personelNumbers=[Int]() // Empty Array

var fruits:[String] = ["apple","banana","pear","strawberry"]

var value1 = fruits[2] // pear
print(fruits[3]) // strawberry write

var array4 = [Int](repeating: 0, count: 3) // 3 piece of 0
print(array4.count)

// Add value to array

fruits.append("Cherry")
fruits += ["Orange"]

// Change value

fruits[0] = "watermelon"
print(fruits)

fruits.insert("InstertTest", at: 3)

fruits.isEmpty // null or not null control, true - false result
fruits.first // first value
fruits.last // last value
fruits.contains("watermelon") // true - false result
fruits.max()
fruits.min()
fruits.reverse() // DESC
fruits.sort() // sorted


var fruits2:[String] = ["apple","banana","pear","strawberry"]
fruits2.remove(at: 2) // Deletion by index number
print(fruits2)

fruits2.removeAll() // All delete! Attention!

// For loop

for fruit in fruits {
    print("Results: \(fruit)")
}

for (index, fruit) in fruits.enumerated(){
    print("Index \(index) : \(fruit)")
}

// Filtering Operations

var numbers1 = [1,2,3,4,5,6,7,8,9]

var result1 = numbers1.filter({$0>7})
print(result1)

var result2 = numbers1.filter({$0<4})
print(result2)

var result3 = numbers1.filter({$0>3 && $0<7})
print(result3)

// Example
// Average Calculation

var averageArray = [15,28,35,78,45,51,94]
var sum = 0
for a in averageArray{
    sum += a
}
var avg:Double = (Double(sum) / Double(averageArray.count))
print(avg)
//OR
print("Average: \(sum/averageArray.count)")


// Change content

var numbers3:[Int] = [5,10,15,20]

for (i,n) in numbers3.enumerated(){
    let result4 = n*2
    numbers3[i] = result4
}

print(numbers3)

// Example - Odd and Even Nubmers

var oddEvenNumbers = [2,5,7,11,18,30,46,55,27,6,62,95]

var oddNumbers = [Int]()
var evenNumbers = [Int]()

for oen in oddEvenNumbers{
    let resultNumbers = oen % 2
    resultNumbers==1 ? oddNumbers.append(oen) : evenNumbers.append(oen)
}

print(oddNumbers)
print(evenNumbers)

// Random number creation

var numbers5 = [Int]()

for _ in 1...10{
    let randomNumber = arc4random_uniform(10)
    numbers5.append(Int(randomNumber))
}
numbers5.sort()
print(numbers5)

var numbers6 = [Int]()

for _ in 1...6{
    let randomNumber2 = Int.random(in: 11...19)
    numbers6.append(randomNumber2)
}
print(numbers6)
