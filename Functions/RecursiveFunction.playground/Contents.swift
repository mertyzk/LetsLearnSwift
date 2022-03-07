import UIKit

func geriyeSay(sayi : Int){
    print(sayi)
    if sayi > 0 {
        geriyeSay(sayi: sayi-1)
    }
}

print("Geriye sayma")
var start : Int = 3
geriyeSay(sayi: start)

// example 2

func write(sayi : Int){
    print("write(\(sayi)) function start")
    if sayi > 1{
        print("write(\(sayi)) function called (\(sayi-1))")
        write(sayi: sayi-1)
    }
    print("write(\(sayi))")
    print("write(\(sayi)) finished")
}

print("---------------")
write(sayi: 3)
