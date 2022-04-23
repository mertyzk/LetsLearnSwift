import UIKit
import Darwin

// enum property

enum BilgisayarParcasi : String {
    
    case EkranKarti
    case Anakart
    case Islemci
    case Ram
    case SSD
    case Klavye
    case Mouse
    
    var tanimlayici : String{
        return self.rawValue.uppercased()
    }
    
    var onemDerecesi : Int {
        return tanimlayici.count
    }
}

let ekranKarti = BilgisayarParcasi.EkranKarti
print(ekranKarti.tanimlayici)
print(ekranKarti.onemDerecesi)

// enum function and static variable

enum BegeniDerecesi : String {
    
    case Harika
    case Iyi
    case Orta
    case Kotu
    case Berbat
    case Yorumsuz
    
    mutating func dahaFazlaBegeni(){
        print("\(self.rawValue) seviyesinden ayrılıyorsunuz")
        
        switch self {
        case.Harika : print("En üst mertebede")
        case.Iyi : self = .Harika
        case.Orta : self = .Iyi
        case.Kotu : self = .Orta
        case.Berbat : self = .Kotu
        case.Yorumsuz : self = .Berbat
        }
    }
    
    static var begeniSayisi : Int {
        return 6
    }
    
}

var begeni : BegeniDerecesi = BegeniDerecesi.Orta
print(begeni)
begeni.dahaFazlaBegeni()
print(begeni)
print(BegeniDerecesi.begeniSayisi)

// Ic ice enum yapisi

enum KarakterBilgisi {
    
    enum Silahlar{
        case Yay
        case Kılıç
        case Bıçak
        case Balta
    }
    
    enum Kask{
        case TahtaKask
        case DemirKask
        case AltınKask
    }
    
    case Hırsız
    case Savaşçı
    case Baltacı
    case YanKarakter
    
}


var karakter1 : KarakterBilgisi = KarakterBilgisi.Savaşçı
var silah1 : KarakterBilgisi.Silahlar = .Bıçak
var kask1 : KarakterBilgisi.Kask = .AltınKask
print(karakter1)
print(silah1)
print(kask1)

// enum yapisinda static function tanimla

enum AppleUrunleri {
    
    case MacbookPro, iPhone, iMac, iWatch
    
    static func appleUrunleriniGetir(adi : String) -> AppleUrunleri? {
    
        let ad = adi.lowercased()
        
        switch ad {
        case "telefon" : return.iPhone
        case "saat" : return.iWatch
        case "laptop" : return.MacbookPro
        case "desktop" : return.iMac
        default : "geçersiz değer"
            return nil
        }
    }
}

if let urun = AppleUrunleri.appleUrunleriniGetir(adi: "telefon"){
    print(urun)
} else {
    print("böyle bir ürün yok")
}

// enum init

enum Urunler {
    
    case OyunKonsolu, ATM, Peçete, Yapıştırıcı
    
    init(urunAdi : String) {
        switch urunAdi{
        case "atari" : self = .OyunKonsolu
        case "bankamatik" : self = .ATM
        case "mendil" : self = .Peçete
        case "uhu" : self = .Yapıştırıcı
        default: self = .OyunKonsolu
        }
    }
}

let u1 = Urunler.Peçete
print(u1)
let u2 = Urunler(urunAdi: "atari")
print(u2)

// enum init 2

enum Boy {
    case Uzun
    case Orta
    case Kısa
    
    init(boyUzunlugu : Int){
        switch boyUzunlugu{
        case 0..<150 : self = .Kısa
        case 150..<180 : self = .Orta
        case 180..<220 : self = .Uzun
        default : self = .Orta
            print("Bilinmeyen uzunluk girildi")
        }
    }
}

var b1 = Boy.Orta
var b2 = Boy(boyUzunlugu: 195)
print(b1)
print(b2)
