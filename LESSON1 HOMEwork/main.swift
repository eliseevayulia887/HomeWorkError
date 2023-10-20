//1

/*class Weapon {
    var nameWeapon: String
    var owner: Fighter?

init(nameWeapon: String) {
    self.nameWeapon = nameWeapon
    self.owner = nil
    }
}

class Fighter {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let fighter1 = Fighter(name: "winter wyvern")
let fighter2 = Fighter(name: "magnus")

let weapon = Weapon(nameWeapon: "огонь")
weapon.owner = fighter1

print(weapon.owner?.name)

weapon.owner = fighter2

print(weapon.owner?.name)

weapon.owner = nil

print(weapon.owner?.name)*/


//2

/*class Fighter {
    var name: String
    var type: String
    var weapon: String
    var health: Int
    var strength: Int
    
    init(name: String, type: String, weapon: String, health: Int, strength: Int) {
        self.name = name
        self.type = type
        self.weapon = weapon
        self.health = health
        self.strength = strength
    }
    
    func reduceDamage(damage: Int) {
        health -= damage
        if health < 0 {
            health = 0
        }
        print("\(name) получил урон. Текущее здоровье: \(health)")
    }
    
    func attack() {
        print("\(name) атакует с использованием \(weapon).")
    }
    
    func balanceHP() {
        print("\(name) имеет \(health) здоровья.")
    }
    
    func isDead() -> Bool {
        return health <= 0
    }
}


let fighter1 = Fighter(name: "Боец 1", type: "Тор", weapon: "Молот", health: 90, strength: 50)
let fighter2 = Fighter(name: "Боец 2", type: "Лучник", weapon: "Лук", health: 75, strength: 20)

fighter1.attack()
fighter1.reduceDamage(damage: fighter2.strength)
fighter1.balanceHP()


fighter2.attack()
fighter2.reduceDamage(damage: fighter1.strength)
fighter2.balanceHP()


print("Боец 1 жив? \(fighter1.isDead() ? "Нет" : "Да")")
print("Боец 2 жив? \(fighter2.isDead() ? "Нет" : "Да")")*/


//3


/*class Fighter {
    var name: String
    var health: Int
    var strength: Int

    init(name: String, health: Int, strength: Int) {
        self.name = name
        self.health = health
        self.strength = strength
    }

    func attack() {
        print("\(name) атакует!")
    }
}

// Подкласс Warrior
class Warrior: Fighter {
    var shieldStrength: Int

    init(name: String, health: Int, strength: Int, shieldStrength: Int) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, strength: strength)
    }

    func shieldBash() {
        print("\(name) использует удар щитом!")
    }
}

// Подкласс Mag
class Mag: Fighter {
    var spellPower: Int

    init(name: String, health: Int, strength: Int, spellPower: Int) {
        self.spellPower = spellPower
        super.init(name: name, health: health, strength: strength)
    }

    func castSpell() {
        print("\(name) использует заклинание!")
    }
}

let warrior = Warrior(name: "Воин", health: 100, strength: 20, shieldStrength: 10)
let mag = Mag(name: "Маг", health: 80, strength: 15, spellPower: 30)

warrior.attack()
warrior.shieldBash()

mag.attack()
mag.castSpell()


//4

struct Person: Hashable {
    var name: String
    var age: Int
}

let person1 = Person(name: "John", age: 25)
let person2 = Person(name: "Jane", age: 30)


var peopleDictionary: [Person: String] = [:]
peopleDictionary[person1] = "Friend"
peopleDictionary[person2] = "Colleague"


for (person, relationship) in peopleDictionary {
    print("\(person.name) is a \(relationship)")
}

//5

protocol PeopleProtocol {
    var name: String { get }
    var age: Int { get }
    func introduce() -> String
}

protocol DefenseProtocol {
    var defensePower: Int { get }
    func defend() -> String
}


protocol FighterProtocol {
    var attackPower: Int { get }
    func attack() -> String
}


protocol AttackProtocol {
    var damage: Int { get }
    func performAttack() -> String
}*/

//6

protocol Character {
    func introduce()
    func attack()
}

struct People: Character {
    func introduce() {
        print("I am a regular person.")
    }
    
    func attack() {
        print("I can't attack.")
    }
}

struct Warrior: Character {
    func introduce() {
        print("I am a warrior.")
    }
    
    func attack() {
        print("I swing my sword to attack.")
    }
}

struct Mag: Character {
    func introduce() {
        print("I am a mage.")
    }
    
    func attack() {
        print("I cast a spell to attack.")
    }
}

let person = People()
let warrior = Warrior()
let mage = Mag()

person.introduce()
person.attack()

warrior.introduce()
warrior.attack()

mage.introduce()
mage.attack()


