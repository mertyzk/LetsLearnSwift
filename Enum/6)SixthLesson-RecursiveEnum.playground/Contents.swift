import UIKit

indirect enum MatematikselIfade{
    
    case sayi(deger : Double)
    case Toplama(sayi1 : MatematikselIfade , sayi2 : MatematikselIfade)
    case Fark(sayi1 : MatematikselIfade , sayi2 : MatematikselIfade)
    case Carp(sayi1 : MatematikselIfade , sayi2 : MatematikselIfade)
    case Bol(sayi1 : MatematikselIfade , sayi2 : MatematikselIfade)
}

var s1 : MatematikselIfade = MatematikselIfade.sayi(deger: 10)
print(s1)

if case let .sayi(deger) = s1 {
    print("Sayı : \(deger)")
}

MatematikselIfade.Toplama(sayi1: .sayi(deger: 10), sayi2: .sayi(deger: 20))

func hesapla(_ ifade : MatematikselIfade) -> Double {
    switch ifade{
    case let .sayi(deger) : return deger
    case let .Toplama(deger1, deger2) : return hesapla(deger1) + hesapla(deger2)
    case let .Fark(deger1, deger2) : return hesapla(deger1) - hesapla(deger2)
    case let .Carp(deger1, deger2) : return hesapla(deger1) * hesapla(deger2)
    case let .Bol(deger1, deger2) : return hesapla(deger1) / hesapla(deger2)
    }
}

let s2 : MatematikselIfade = MatematikselIfade.sayi(deger: 4)
print(hesapla(s2))

let s3 : MatematikselIfade = MatematikselIfade.Fark(sayi1: .sayi(deger: 20), sayi2: .sayi(deger: 30))
print(hesapla(s3))

let s4 : MatematikselIfade = MatematikselIfade.Carp(sayi1: .sayi(deger: 5), sayi2: .sayi(deger: 25))
print(hesapla(s4))

let s5 : MatematikselIfade = MatematikselIfade.Toplama(sayi1: MatematikselIfade.Toplama(sayi1: .sayi(deger: 4), sayi2: .sayi(deger: 5)), sayi2: MatematikselIfade.Carp(sayi1: .sayi(deger: 6), sayi2: .sayi(deger: 7)))
print(hesapla(s5))

let s6 : MatematikselIfade = MatematikselIfade.Carp(sayi1: // birinci ifade ile ikinci ifadenin çarpımı yapılacak
        MatematikselIfade.Fark(sayi1: // birinci ve ikinci değerin farkı bize birinci parametreyi verecek. aşağıdaki satırlarda 30-18 = 12
        MatematikselIfade.Toplama(sayi1: .sayi(deger: 10), sayi2: .sayi(deger: 20)) // buradan 30 gelecek
            , sayi2: MatematikselIfade.Carp(sayi1: .sayi(deger: 6), sayi2: .sayi(deger: 3))) // buradan 18 gelecek
        , sayi2: MatematikselIfade.sayi(deger: 10)) // çarpılacak ikinci ifade 10
print(hesapla(s6)) // 12 * 10 = 120 sonucunu alırız


// recursive olmadan nasıl yapabilirdik ? Tabii ki recursive kadar efektif çalışmayacak.

enum Operatorler {
    case Toplama(deger1 : Double , deger2 : Double)
    case Fark(deger1 : Double , deger2 : Double)
    case Carp(deger1 : Double , deger2 : Double)
    case Bol(deger1 : Double , deger2 : Double)
    var sonuc : Double{
        switch self {
        case let .Toplama(sayi1, sayi2) : return sayi1 + sayi2
        case let .Fark(sayi1, sayi2) : return sayi1 - sayi2
        case let .Carp(sayi1, sayi2) : return sayi1 * sayi2
        case let .Bol(sayi1, sayi2) : return sayi1 / sayi2
        }
    }
}

print(Operatorler.Toplama(deger1: 10, deger2: 4).sonuc)

// ya da

let deger = Operatorler.Carp(deger1: 2, deger2: 3)
print(deger.sonuc)

class HesapMakinesi {
    
    static var toplam : (Double , Double) -> Double = { $0 + $1 } //0. parametre ile 1. parametreyi toplayacak
    static var fark : (Double , Double) -> Double = { $0 - $1 }
    static var carp : (Double , Double) -> Double = { $0 * $1 }
    static var bol : (Double , Double) -> Double = { $0 / $1 }
    
}

var sonuc = HesapMakinesi.bol(10 , 20)
print(sonuc)

sonuc = HesapMakinesi.fark(5.3 , 3.2)
print(sonuc)
