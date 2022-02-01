import UIKit

//IF
func KisiTanima(ad:String){
    if ad=="Ahmet"{
        print("Merhaba Ahmet")
    }
    else{
        print("Tanınmayan kişi")
    }
}

KisiTanima(ad: "Ahmetx")

func KisiTanimaG(ad:String){
    guard ad=="Mehmet" else {
        print("Tanınmayan Kişi")
        return
    }
        print("Merhaba Mehmet")
}

KisiTanimaG(ad: "Mehmet")

func buyukHarfYap(str:String?){
    if let temp = str{
        print(temp.uppercased())
    }
    else{
        print("Str is nil")
        return
    }
}

buyukHarfYap(str: nil)

func buyukHarfYap1(str:String?){
    guard let temp = str else{
        print("Str is nil")
        return
    }
        print(temp.uppercased())
}

buyukHarfYap1(str: "test")
