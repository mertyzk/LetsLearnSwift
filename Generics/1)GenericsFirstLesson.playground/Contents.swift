import UIKit

func swapInt(sayi1 : inout Int , sayi2 : inout Int){
    (sayi1 , sayi2) = (sayi2 , sayi1)
}

var sayi1 : Int = 3
var sayi2 : Int = 5
print("SAYI 1: \(sayi1) -- SAYI2 : \(sayi2)")
swapInt(sayi1: &sayi1, sayi2: &sayi2)
print("SAYI 1: \(sayi1) -- SAYI2 : \(sayi2)")


// for double

func swapDouble(sayi1 : inout Double , sayi2 : inout Double){
    (sayi1 , sayi2) = (sayi2 , sayi1)
}

var sayi3 : Double = 3.5
var sayi4 : Double = 5.5
print("SAYI 1: \(sayi3) -- SAYI2 : \(sayi4)")
swapDouble(sayi1: &sayi3, sayi2: &sayi4)
print("SAYI 1: \(sayi3) -- SAYI2 : \(sayi4)")



// for any


func swapAny(sayi1 : inout Any , sayi2 : inout Any){
    (sayi1 , sayi2) = (sayi2 , sayi1)
}


var sayi5 : Any = "merhaba"
var sayi6 : Any = 4.5
print("SAYI 1: \(sayi5) -- SAYI2 : \(sayi6)")
swapAny(sayi1: &sayi5, sayi2: &sayi6)
print("SAYI 1: \(sayi5) -- SAYI2 : \(sayi6)")

// aynı tipte 2 ifade gelmedi fakat takası yaptı. string ve double geldi takas yaptı. sıkıntı.
// aynı tipte parametre gelmesi lazım. generic burada tip güvenliğini sağlayacak.


// GENERICS

func swapAll<T>(sayi1 : inout T, sayi2 : inout T){
    (sayi1, sayi2) = (sayi2, sayi1)
}

var sayi7 : Double = 5.5
var sayi8 : Double = 6.6
print("SAYI 1: \(sayi7) -- SAYI2 : \(sayi8)")
swapAll(sayi1: &sayi7, sayi2: &sayi8)
print("SAYI 1: \(sayi7) -- SAYI2 : \(sayi8)")

var isim1 : String = "Ahmet"
var isim2 : String = "Cahit"
print("SAYI 1: \(isim1) -- SAYI2 : \(isim2)")
swapAll(sayi1: &isim1, sayi2: &isim2)
print("SAYI 1: \(isim1) -- SAYI2 : \(isim2)")
