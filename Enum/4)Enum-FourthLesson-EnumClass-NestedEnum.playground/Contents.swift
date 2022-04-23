import UIKit

class KarakterProfili {
    
    enum KarakterTipi {
        case Priest
        case Warrior
        case Mage
        case Rogue
    }
    
    enum Yetenek {
        case Str
        case Int
        case Power
        case Spirit
    }
    
    enum Skill {
        case Climb
        case Hiding
        case Tracker
        case Forest
    }
    
    var karakterTip : KarakterTipi
    var skill : Skill
    var yetenek : Yetenek
    
    init(karakterTip : KarakterTipi, skill : Skill, yetenek : Yetenek){
        self.karakterTip = karakterTip
        self.skill = skill
        self.yetenek = yetenek
    }
    
}

var chr1 : KarakterProfili = KarakterProfili(karakterTip: KarakterProfili.KarakterTipi.Warrior, skill: KarakterProfili.Skill.Climb, yetenek: KarakterProfili.Yetenek.Power)
print(chr1.yetenek)
print(chr1.skill)
print(chr1.karakterTip)

enum GameStuff {
    
    enum Charge : Int {
        case bow = 10
        case Iron = 5
        case Knife = 9
        case Gun = 13
    }
    
    enum DamageLevel : Int{
        case Low
        case Medium
        case High
    }
    
    case Weapon(damageLevel : DamageLevel, charge : Charge)
    
    func getProfile() -> String {
        
        switch self {
        case let .Weapon(damageLevel , charge) :
            return "Damage level : \(damageLevel)\nCharge : \(charge)"
        }
    }
}

let qs1 = GameStuff.Weapon(damageLevel: GameStuff.DamageLevel.High, charge: GameStuff.Charge.bow)
print(qs1.getProfile())
