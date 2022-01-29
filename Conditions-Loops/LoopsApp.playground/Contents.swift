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
