import UIKit

enum Sonuc<T> {
    case Basarili(T)
    case Hatali(T)
}

let s1 = Sonuc.Basarili(Int())
print(s1)

var s2 = Sonuc.Hatali(Int())
print(s2)

s2 = Sonuc.Basarili(Int(4))
print(s2)

// Tip boş geçme

var s3 = Sonuc.Hatali(())
print(s3)

var s4 : Sonuc<Void> = Sonuc.Basarili(())
print(s4)


enum KisiBilgisi<T , E>{
    case Adi(T)
    case Boyu(E)
    case Yasi(E)
}

let deger1 = KisiBilgisi<String , Int>.Boyu(174)
print(deger1)

let ad1 : String? = "Mert"
print(ad1)
let ad2 = Optional("Serkan")
print(ad2)
