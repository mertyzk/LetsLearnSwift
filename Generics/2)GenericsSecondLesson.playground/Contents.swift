import UIKit

func swapAll<T : Numeric>(sayi1 : inout T, sayi2: inout T){
    (sayi1 , sayi2) = (sayi2, sayi1)
}

var s1 : Double = 3.3
var s2 : Double = 4.5

var s3 : Int = 100
var s4 : Int = 200

print("s1 : \(s1) -- s2 : \(s2)")
swapAll(sayi1: &s1, sayi2: &s2)
print("s1 : \(s1) -- s2 : \(s2)")


var string1 : String = "Ali"
var string2 : String = "Mehmet"

// <T : Numeric> olursa çalışmayacaktır.
//print("s1 : \(string1) -- s2 : \(string2)")
//swapAll(sayi1: &string1, sayi2: &string2)
//print("s1 : \(string1) -- s2 : \(string2)")
// <T : Numeric> olduğu için bu alan çalışmadı.


func esitKontrol<T : Equatable>(deger1 : T , deger2 : T) -> Bool{
    if deger1 == deger2{
        print("Değerler eşit")
        return true
    } else {
        print("Değerler farklı")
        return false
    }
}

var sonuc : Bool = esitKontrol(deger1: "ali", deger2: "veli")
print(sonuc) // değerler farklı - false

sonuc = esitKontrol(deger1: 99, deger2: 99)
print(sonuc) // değerler eşit - true

sonuc = esitKontrol(deger1: 100.0, deger2: 99.0)
print(sonuc) // değerler farklı - false



func maxBul<T : Comparable>(deger1 : T , deger2: T) -> T{
    
    print(type(of: T.self))
    
    if type(of: T.self) == type(of: String.self){
        print("Gelen ifade stringtir")
        let str1 : String = deger1 as! String
        let str2 : String = deger2 as! String
        if str1.count > str2.count {
            print("Birinci string daha uzundur")
            return deger1
        } else {
            print("İkinci string daha uzundur")
            return deger2
        }
    }
    
    //GELEN IFADEYI SINIRLANDIRMA. ÖRNEĞİN STRİNGİ YASAKLAYALIM.
     
   /* guard type(of: T.self) != type(of: String.self) else {
        print("Gelen değer string olamaz")
        return nil // nil döndürmek için fonksiyonun geri dönüş tipini ? (optional) yapmalıyız. haliyle aşağıdaki max1, max2, max3 gibi tanımlamaları optional tipe dönüştürmek zorundayız.
    }*/
     
     
    
    
    if deger1>deger2{
        print("\(deger1) (DEĞER 1) daha büyüktür")
        return deger1
    } else if deger1 == deger2{
        print("\(deger1) ve \(deger2) (DEĞER1 = DEĞER2) birbirine eşittir")
        return deger1
    } else {
        print("\(deger2) (DEĞER 2) daha büyüktür")
        return deger2
    }
}

var max1 : Int = maxBul(deger1: 25, deger2: 12)
print(max1)
var max2 : Double = maxBul(deger1: 8.8, deger2: 18.8)
print(max2)
var max3 : String = maxBul(deger1: "ahmet", deger2: "ayşe")
print(max3)
