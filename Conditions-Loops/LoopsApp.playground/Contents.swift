import UIKit

// FOR

for index in 1...5{
    print(index)
    print("Hello")
}

var start = 10
var finish = 20
var up = 5

for item in stride(from: start, through: finish, by: up){
    print(item)
}


// WHILE

var index = 1
while index < 5{
    print("Result : \(index)")
    index += 1
}

var counter = 1
while counter <= 3
{
    print(counter)
    counter += 1
}

// EXAMPLES...

for i in 3...6{
    print("Loop 1 : \(i)")
}

let start1 = 0
let finish1 = 8
let up1 = 1

for x in stride(from: start1, through: finish1, by: up1){
    print("Stride Loop \(x)")
}

var name = "TestName"

for n in 1...5{
    print("\(n).\(name)")
}
 
var numberOfName = name.count

for y in 1...numberOfName{
    print("\(y).\(name)")
}


// BREAK & CONTINUE

for i in 24...30{
    if i == 27{
        break
    }
    print("Break Loop \(i)")
}

for p in 13...19{
    if p == 17{
        continue
    }
    print("Continue loop \(p)")
}
