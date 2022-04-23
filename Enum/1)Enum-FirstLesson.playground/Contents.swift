import UIKit

enum KasaTipi {
    case Hatchback
    case Sedan
    case Station_Wagon
    case Cabrio
    case Pick_Up
    case SUV
}

enum ArabaRenkleri {
    case Kırmızı
    case Beyaz
    case Siyah
    case Mavi
    case Yeşil
    case Sarı
}

class Araba {
    
    var markasi : String
    var kasaTipi : KasaTipi
    var renk : ArabaRenkleri
    var yili : Int
    var km : Double
    
    init(markasi : String, kasaTipi : KasaTipi, renk : ArabaRenkleri, yili : Int, km : Double) {
        self.markasi = markasi
        self.kasaTipi = kasaTipi
        self.renk = renk
        self.yili = yili
        self.km = km
    }
    
    func ozet(){
        print("""
--------------------------
Marka: \(markasi)
Kasa Tipi: \(kasaTipi)
Renk: \(renk)
Model: \(yili)
KM Bilgi: \(km)
""")
    }
}

var arac1 : Araba = Araba(markasi: "opel", kasaTipi: KasaTipi.Sedan, renk: ArabaRenkleri.Beyaz, yili: 2005, km: 199235)
arac1.ozet()

var arac2 : Araba = Araba(markasi: "mercedes", kasaTipi: KasaTipi.Cabrio, renk: ArabaRenkleri.Sarı, yili: 2010, km: 151515)
arac2.ozet()

enum Cinsiyet {
    case Erkek
    case Kadın
}

enum DogumGunleri {
    case Pazartesi
    case Salı
    case Çarşamba
    case Perşembe
    case Cuma
    case Cumartesi
    case Pazar
}

class Kisi {
    var adiSoyadi : String?
    var cinsiyet : Cinsiyet?
    var dogduguGun : DogumGunleri?
}

//var k1 : Kisi = Kisi()
//k1.adiSoyadi = "Ali Veli"
//k1.cinsiyet = "Erkek"
//k1.dogduguGun = "Pazartesi"

//var k2 : Kisi = Kisi()
//k2.adiSoyadi = "Keriman"
//k2.cinsiyet = "Çocuk" // bu bir cinsiyet değil
//k2.dogduguGun = "Salı akşamı" // biz sadece gün istiyoruz akşamı değil

var k3 : Kisi = Kisi()
k3.adiSoyadi = "İsim soyisim"
k3.cinsiyet = Cinsiyet.Erkek
k3.dogduguGun = DogumGunleri.Çarşamba
print(k3.adiSoyadi!,k3.cinsiyet!,k3.dogduguGun!)
