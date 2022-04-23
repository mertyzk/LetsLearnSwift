import UIKit

enum Yonler {
    
    case Kuzey
    case Guney
    case Dogu
    case Bati
}

enum Gezegenler {
    
    case Merkur, Venus, Dunya, Mars, Jupiter, Saturn, Uranus, Neptun, Pluton
}

var g1 = Gezegenler.Mars
var yon = Yonler.Bati
g1 = .Merkur // g1 artık gezegenler tipinden
print(g1)

switch yon {
    
case .Bati : print("Batıdasın")
case .Dogu : print("Doğudasın")
case .Kuzey : print("Kuzeydesin")
case .Guney : print("Güneydesin")
    
//default : print("bilinmeyen değer")
}

enum FilmKategori : String {
    
    case Aksiyon
    case Dram
    case Ask
    case Bilim
    
}

let k1 : FilmKategori = FilmKategori.Dram
print(k1.rawValue)

enum Gunler : Int {
    
    case Pazartesi // = 10 diyebiliriz, istenilen değer atanabilir.
    case Salı
    case Çarşamba
    case Perşembe
    case Cuma
    case Cumartesi
    case Pazar
}

var gun1 : Gunler = Gunler.Cumartesi
print(gun1.rawValue)

var gun2 : Gunler = Gunler.init(rawValue: 4) ?? Gunler.Pazar
print(gun2.rawValue)
print(gun2)


enum DogumTarihi {
    
    case Tarih(Gun : Int, Ay : Int, Yıl : Int)
    case Gun(Gunler)
    
}

var ta1 = DogumTarihi.Tarih(Gun: 15, Ay: 8, Yıl: 1995)
var tq1 = DogumTarihi.Gun(.Cuma)
print(ta1)
print(tq1)

if case let DogumTarihi.Tarih(gun , ay , yil) = ta1{
    print("Gün: \(gun)\nAy: \(ay)\nYıl: \(yil)")
}

if case let DogumTarihi.Gun(value) = tq1{
    print(value)
}
