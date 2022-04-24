import UIKit

protocol YemekDegerleri {
    
    associatedtype tuzTipi
    var tuzMiktari : tuzTipi {get set}
    
}

struct Corbalar : YemekDegerleri {
    typealias tuzTipi = Int
    var tuzMiktari: Int
    init(miktar : Int){
        tuzMiktari = miktar
    }
}

enum Miktar : String{
    case Fazla
    case Orta
    case Az
    case Yok
}

class PilavTurleri : YemekDegerleri {
    typealias tuzTipi = Miktar
    var tuzMiktari: Miktar
    init(miktar : Miktar){
        tuzMiktari = miktar
    }
}

extension YemekDegerleri{
    
    static func tuzDegeri(){
        print("bu yemek çok tuzlu")
    }
}
PilavTurleri.tuzDegeri()
Corbalar.tuzDegeri()

// tuzTipi değerini INT olarak tanımlayan class / struct yapılarını etkileyecektir.
extension YemekDegerleri where tuzTipi == Int{
    func tuzMiktarKontrol(){
        if tuzMiktari > 10 {
            print("çok tuzlu")
        } else if tuzMiktari == 0 {
            print("Hiç tuz yok")
        } else {
            print("az tuzlu")
        }
    }
}

var c1 : Corbalar = Corbalar(miktar: 5)
c1.tuzMiktarKontrol()

var p1 : PilavTurleri = PilavTurleri(miktar: .Fazla) // pilav türleri için extension where INT geçerli olmadı. zaten böyle olması gerekiyordu.

extension YemekDegerleri where tuzTipi == Miktar {
    func tuzMiktarKontrol1(){
        switch tuzMiktari {
        case .Fazla : print("çok tuzlu, yememelisin")
        case .Orta : print("orta tuzlu, yenebilir")
        case .Az : print("Tuz eklemelisin")
        case .Yok : print("Hiç tuz yok")
        }
    }
}

p1.tuzMiktari = .Yok
p1.tuzMiktarKontrol1()


print("-------------------------------------------------------------")
print("-------------------------------------------------------------")

class Veriler <T> {
    var degerler = [T]()
    func ekle(veri : T){
        degerler.append(veri)
    }
    
    func sil(index : Int) -> T? {
        guard degerler.count > index else {
            print("index değeri yanlış")
            return nil
        }
        
        return degerler.remove(at: index)
    }
    
    func sonElemaniSil() -> T {
        let silinenEleman : T = degerler.removeLast()
        return silinenEleman
    }
    
}

let v1 : Veriler<String> = Veriler<String>()
v1.ekle(veri: "ios")
v1.ekle(veri: "test")
v1.ekle(veri: "swift")
v1.ekle(veri: "github")

print(v1.degerler)

v1.sil(index: 1)
print(v1.degerler)

v1.sonElemaniSil()
print(v1.degerler)

extension Veriler {
    
    var sonEleman : T? {
        return degerler.isEmpty ? nil : degerler[degerler.count - 1]
    }
}

if let son = v1.sonEleman{
    print("Son eleman :  \(son)")
}

extension Veriler where T : Equatable{
    
    func ilkElemanKontrol(deger : T) -> Bool{
        guard degerler.isEmpty == false else {
            print("dizi boş")
            return false
        }
        let ilk = degerler.first
        return ilk == deger
        /*
         yukarıdaki ifade aslında...
         if ilk == deger {
            return true
        } else {
            return false
        }*/
    }
    
}

if v1.ilkElemanKontrol(deger: "IOS"){
    print("ilk elemanı doğru bildin")
} else {
    print("yanlış bildin")
}
