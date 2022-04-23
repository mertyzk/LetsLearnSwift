import UIKit

protocol KarakterCani {
    
    var canDegeri : Int { get }
    mutating func canTopla()
    mutating func saldiriAl()
    
}

enum Oyuncu : KarakterCani {

    var canDegeri : Int{
        
        switch self {
        case .Olu : return 0
        case let .Canli(can) :
            if can > 100 {
                return 100
            } else {
                return can
            }
        }
        
    }
    
    case Olu
    case Canli(anlikCan : Int)
    
    mutating func canTopla() {
        switch self {
        case let .Canli(can) : self = .Canli(anlikCan: can + 1)
        case .Olu : print("Kişi ölmüştü fakat canlandı")
            self = .Canli(anlikCan: 1)
        }
    }
    
    mutating func saldiriAl() {
        switch self {
        case let .Canli(can) :
            if can <= 1{
                self = .Olu
                print("kişi öldü")
            } else {
                self = .Canli(anlikCan: can - 1)
                print("can 1 azaldı ve can değeri : \(can - 1)")
            }
        case .Olu : print("Kişi zaten ölü..")
        }
    }
}

var oyuncuDurum = Oyuncu.Olu
print(oyuncuDurum.canDegeri)

oyuncuDurum = Oyuncu.Canli(anlikCan: 2)
print(oyuncuDurum.canDegeri)

var canDegeri = Oyuncu.Canli(anlikCan: 190).canDegeri
print(canDegeri)


//functions

oyuncuDurum.canTopla()
print(oyuncuDurum.canDegeri)

oyuncuDurum.saldiriAl()
print(oyuncuDurum.canDegeri)


enum InsanHareketleri {
    case Yuru
    case Kos
    case Nefesal
    case Zipla(yukseklik : Int)
}

func == (left : InsanHareketleri, right : InsanHareketleri) -> Bool { //equatable kullanımı
    
    switch(left , right){
    case (.Nefesal , .Nefesal) , (.Yuru , .Yuru) , (.Kos , .Kos) : return true
    case let (.Zipla(yukseklikLeft) , .Zipla(yukseklikRight)) : return yukseklikLeft == yukseklikRight
    default : return false
    }
    
    
}

var h1 : InsanHareketleri = InsanHareketleri.Yuru
var h2 : InsanHareketleri = InsanHareketleri.Kos
if h1 == h2{
    print("aynı hareketler")
} else {
    print("farklı hareketler")
}
