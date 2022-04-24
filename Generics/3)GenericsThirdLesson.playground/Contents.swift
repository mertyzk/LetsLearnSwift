import UIKit

func ara <T : Equatable>(deger : T , dizi : [T]) -> Bool {
    
    var index : Int = 0
    var bulunduMu = false
    while(index < dizi.count && bulunduMu == false){
        if deger == dizi[index] {
            bulunduMu = true
        } else {
            index = index + 1
        }
    }
    
    if bulunduMu{
        return true
    } else {
        return false
    }
}

let tamSayi = [1,2,3,4,5,6,7,8,9]
let kisiler = ["ali","veli","mehmet","ayşe","kenan","emrah","mert"]
let ondalikliSayi = [3.5,7.2,4.6,2.1,5.9,8.2,11.5,-13.8]

print(ara(deger: 4, dizi: tamSayi))
print(ara(deger: "veli", dizi: kisiler))
print(ara(deger: 4.6, dizi: ondalikliSayi))


func indexBul<T : Equatable>(arananDeger : T, dizi : [T]) -> Int? { // nil döndürebilmek için optional
    for(index,eleman) in dizi.enumerated(){
        if eleman == arananDeger{
            return index
        }
    }
    
    return nil
}

print(indexBul(arananDeger: "ayşe", dizi: kisiler)!)



class Hesapla<T>{
    
    var deger : T?
    init(){
        
    }
    init(deger : T){
        self.deger = deger
    }
    
}

var h1 : Hesapla = Hesapla<Int>()
var h2 : Hesapla = Hesapla<Double>(deger: 20.4)
var h3 : Hesapla = Hesapla<Bool>(deger: true)
print(h1.deger)
print(h2.deger!)
print(h3.deger!)

struct Liste<T> {
    var degerler = [T]()
    mutating func ekle(deger : T){
        degerler.append(deger)
    }
    
    func degerGetir(index : Int) -> T? {
        if degerler.count > index {
            return degerler[index]
        } else {
            return nil
        }
    }
}

var l1 : Liste = Liste<String>()
l1.ekle(deger: "ios")
l1.ekle(deger: "kurs")
l1.ekle(deger: "egitim")
print(l1.degerGetir(index: 1)!)
