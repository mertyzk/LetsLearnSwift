import UIKit

// return value or not return value

// Not return value
func Hello() {
    let sonuc = "Hello World!"
    print(sonuc)
}

Hello()

// Return value

func Hi() -> String {
    let result = "Hi World"
    return result
}

let returnValue = Hi()
print(returnValue)


func selamla2(isim:String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}

selamla2(isim: "Ahmetx")

func toplama(){
    let toplam = 30 + 40
    print("Toplam : \(toplam)")
}

toplama()

func toplama1() -> Int {
    let toplam = 30 + 40
    return toplam
}

var t1 = toplama1()
print("Toplama1 : \(t1)")


func toplama2(sayi1:Int,sayi2:Int) -> Int {
    let toplam = sayi1 + sayi2
    return toplam
}

var t2 = toplama2(sayi1: 50, sayi2: 80)
print("Toplama 2 : \(t2)")


/* #################################################
 ###################################################
 ###################################################
 ###################################################*/

class Matematik{
    func Topla(sayi1:Int,sayi2:Int){
        let toplam = sayi1 + sayi2
        print("Toplam: \(toplam)")
    }
    
    func Cikar(sayi1:Double,sayi2:Double) -> Double {
        return sayi1 - sayi2
    }
    
    func Carp(sayi1:Int,sayi2:Int){
        let sonuc = sayi1 * sayi2
        print("Çarpma: \(sonuc)")
    }
    
    func Bol(sayi1:Double,sayi2:Double) -> String {
        return "Bölme: \(sayi1/sayi2)"
    }
    
}

var m = Matematik()
m.Topla(sayi1: 3, sayi2: 5)
var c = m.Cikar(sayi1: 11, sayi2: 7)
print("Çıkar: \(c)")
m.Carp(sayi1: 10, sayi2: 10)
print(m.Bol(sayi1: 100.0, sayi2: 10.0))

// VARIADIC PARAMETER

func topVariadic(sayilar:Int...) -> Int{
    var toplam = 0
    for s in sayilar{
        toplam += s
    }
    return toplam
}

var v1 = topVariadic(sayilar: 1,2,3,4,5,6)
print(v1)

// n tane değer döndüren fonksiyon

func Islem(sayilar:[Int])-> (toplam:Int,carpma:Int){
    var toplam = 0
    var carpma = 1
    for s in sayilar{
        toplam += s
        carpma *= s
    }
    return(toplam,carpma)
}

var dizi = [1,2,3,4,5]
let b = Islem(sayilar: dizi)

print(b.toplam,b.carpma)

// OPTIONAL RETURN

func Hesapla (sayi1:Int,sayi2:Int) -> Int? {
    let sonuc = sayi1*2 + sayi2*4
    return sonuc
}

var a = Hesapla(sayi1: 5, sayi2: 7)
print("Sonuç: \(a!)")

// or

if let t = a {
    print("Sonuç: \(t)")
    
}

// GLOBAL AND LOCAL PARAMETER

func HTest(sayi1 s1:Int, sayi2 s2:Int) -> Int{ // sayi1 global - s1 local
    let sonuc = s1*2 + s2*4
    return sonuc
}

var h = HTest(sayi1: 30, sayi2: 40)

print("Sonuç : \(h)")
