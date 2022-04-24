import UIKit

protocol Birey {
    var adiSoyadi : String {get set}
    var yasi : Int {get set}
}

class Musteri : Birey{
    var adiSoyadi: String = "Adi Soyadi"
    var yasi: Int = 25
}

protocol GenericBirey {
    var adiSoyadi : String {get set}
    associatedtype type1
    var yasi : type1 {get set}
}

// implicit (üstü kapalı) şekilde tip1 tipinin Int olduğunu belirtme

class Musteri1 : GenericBirey {
    
    var yasi = 50
    var adiSoyadi: String = "ahmet mehmet"
}

// explicit (açık) şekilde

class Musteri2 : GenericBirey{
    typealias type1 = Int
    var yasi: Int = 30
    var adiSoyadi: String = "mehmet ahmet"
}

//***************************

protocol SosyalPaylasim {
    
    associatedtype webSitesi
    func dokumanPaylas(site : webSitesi)
}

class Belgesel : SosyalPaylasim {
    typealias webSitesi = String
    func dokumanPaylas(site: String) {
        print("Belgesel \(site) sayfasında")
    }
}

let b1 : Belgesel = Belgesel()
b1.dokumanPaylas(site: "Github")


class MultipleShare : SosyalPaylasim {
    typealias webSitesi = [String]
    func dokumanPaylas(site: [String]) {
        for s in site{
            print("Belgesel \(s) sayfasında")
        }
    }
}

let c1 : MultipleShare = MultipleShare()
c1.dokumanPaylas(site: ["ali","veli"])

//************************************************

class Film : SosyalPaylasim{
    
    enum webSitesi : String {
        case Youtube
        case Instagram
        case Twitter
        case Facebook
    }
    
    func dokumanPaylas(site: webSitesi) {
        switch site{
        case .Youtube : print("Youtube'da paylaşıldı")
        case .Instagram : print("Instada")
        case .Twitter : print("Twitterda")
        case .Facebook : print("Facebookta paylaştık")
        }
    }
}

let f1 : Film = Film()
f1.dokumanPaylas(site: .Twitter)
