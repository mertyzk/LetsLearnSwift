import UIKit

class Personel{
    func iseAlindi(){
        print("Personel mutlu")
    }
    
}

class Mudur:Personel{
    func iseAl(p:Personel){
        p.iseAlindi()
    }
    
    func terfiEttir(p:Personel) {
    }
    
}

class Isci:Personel{
    func iseAl(p:Personel){
        
    }
}

class Ogretmen:Personel{
    func maasArttir(){
        print("Maaş arttı. Öğretmen mutlu")
    }
}

var ogretmen:Personel = Ogretmen()
var isci:Personel = Isci()

var mudur = Mudur()
mudur.iseAl(p: isci)

