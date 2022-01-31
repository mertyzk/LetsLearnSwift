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

var numbers5 = [Int]() // null array

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

// Example

var points = [Int]()
var lessons = [String]()

lessons.append("Math")
points.append(65)

lessons.append("Physics")
points.append(70)

lessons.append("Biology")
points.append(89)

lessons.append("History")
points.append(44)

lessons.append("TestLesson")
points.append(22)

var top = 0

for i in 0...(lessons.count-1){
    print("\(lessons[i]) : \(points[i])")
    top += points[i]
}

print("Ort. : \(top/lessons.count)")


// NULL OR NOT NULL EXAMPLE

var names = ["Ahmet","John","Ali","Ayşe","Navas"]
var controlNames = "Ali"

for n in names{
    n == controlNames ? print("True") : print("False")
}

// SET

var testSet = Set <Int>() // NULL INT SET
var testSetString: Set = ["X","Y","Z","W","T"]
var testSet2: Set<String> = ["A","B","C","D"]

// SET OPERATIONS

testSet2.insert("E")
testSet.isEmpty // null or not null check
testSet.contains(10) // 10 == true or false
testSet.sorted() // sorted
testSet.remove(15) // delete from

testSet.insert(10)
testSet.insert(25)

for t in testSet{
    print(t)
}

// a intersection b = a kesişim b
// a union b = a birleşim b
// a symmetricDiffrence b = birleşim - kesişim
// a substracting b = a fark b

let tekler:Set = [1,3,5,7,9]
let ciftler:Set = [0,2,4,6,8]

let dizi1 = tekler.union(ciftler).sorted() // a birleşim b
print(dizi1)

let dizi2 = tekler.intersection(ciftler).sorted() // a kesişim b
print(dizi2)

let dizi3 = tekler.symmetricDifference(ciftler).sorted() // birleşim - kesişim
print(dizi3)

let dizi4 = tekler.subtracting(ciftler).sorted() // a fark b
print(dizi4)

// DICTIONARY

var dic1 = [Int:String]() // key - value
var dic2 = [3.14:"Pi",2.71:"e"]
var dic3:[Int:String] = [1:"Bir",2:"İki",3:"Üç"]
var sehirler = [06:"Ankara",01:"Adana",18:"Çankırı",35:"İzmir"]
sehirler[34] = "İstanbul"
sehirler[16] = "Bursa"

print(sehirler)

for (key,value) in sehirler{
    print(key,value)
}

// DICTIONARY TO ARRAY && ARRAY TO DICTIONARY

var dersler = ["Kimya","Biyoloji","Matematik"]
var notlar = [10,20,30]
var dersnotlar = Dictionary(uniqueKeysWithValues: zip(dersler, notlar))
print(dersnotlar)

var dersler1 = dersnotlar.keys
var notlar1 = dersnotlar.values
print(dersler1)
print(notlar1)

// DICTIONARY FILTER

var school:[Int:String] = [154:"Ali",67:"Mehmet",488:"Veli"]
var rsonuc1 = school.filter({$0.key > 100})
print(rsonuc1)
