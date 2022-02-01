import UIKit

struct Product {
    var productName:String?
    var productPrice:Double?
}

class Car {
    var carName:String?
    var carPrice:Double?
}

var notebook = Product()
notebook.productName = "Macbook Air 2020"
notebook.productPrice = 999.99
print(notebook.productName!)
print(notebook.productPrice!)

var carObject = Car ()
carObject.carName = "NameCar"
carObject.carPrice = 64.785
print(carObject.carName!,carObject.carPrice!)

if let temp = notebook.productName{
    print(temp)
}

// ########################################################

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?


    func calistir(){
    calisiyorMu = true
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("Renk: \(renk!)")
        print("Hız: \(hiz!)")
        print("Çalışıyor mu: \(calisiyorMu!)")
    }

}

var bmw = Araba()

bmw.hiz = 250
bmw.renk = "Red"

bmw.calistir()
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()

bmw.calistir()

bmw.hizlan(kacKm: 50)
bmw.bilgiAl()

bmw.yavasla(kacKm: 25)
bmw.bilgiAl()

// LAZY

class Ornek {
    lazy var no = 39
}

var ilkornek = Ornek()
print(ilkornek.no)

// ########################################################

class Matematik {
    var x = 15
    var y = 25
    
    var topla:Int{
        get {
            return x+y
        }
    }
}

var nesne = Matematik()
print(nesne.topla)

class Maaslar {
    var maas = 10000.0
    var bonus = 1.10
    
    var haftalikMaasHesaplama:Double{
        get{
            return (maas*bonus)/52
        }
        set (yeniHaftalikMaas) {
            self.maas = yeniHaftalikMaas * 52
        }
    }
}

var m = Maaslar()

print(m.haftalikMaasHesaplama)
m.haftalikMaasHesaplama = 600
print(m.maas)
