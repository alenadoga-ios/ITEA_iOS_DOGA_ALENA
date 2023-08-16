import UIKit

//     // Класи: Кіт, собака, папуга, півень, корова
//Функції: voice, fly
//Атрибути: name, feetCount, wingsCount,
//Зовнішні функції: getMilk, getEgg

class Birds {
    
    let name: String
    let feetCount: Int
    let wingsCount: Int
    
    init(name:String,feetCount:Int, wingsCount:Int) {
        self.name = name
        self.feetCount = feetCount
        self.wingsCount = wingsCount
    }
    
    func voice() {
        print("cococo")
    }
    
    func fly() {
        print("vjjjjj")
    }
}

class Parrot: Birds {
    
}

class Chicken: Birds {
    
}

class Animal {
    let name: String
    let feetCount: Int
    init(name:String,feetCount:Int) {
        self.name = name
        self.feetCount = feetCount
    }
    
    func voice() {
        print("cococo")
    }
}

class Cat: Animal{
    override func voice() {
        print("Мяу")
    }
    
}
class Cow: Animal {
    override func voice() {
        print("мууу")
    }
}
class Dog: Animal {
    override func voice() {
        print("гав гав")
    }
}

let parrot = Parrot(name: "Попугв", feetCount: 2, wingsCount: 2)
let chicken = Chicken(name: "Курочка", feetCount: 2, wingsCount: 2)
let cow = Cow(name: "Коровка", feetCount: 4)
let dog = Dog(name: "Собачка", feetCount: 4)
let cat = Cat(name: "Кошка", feetCount: 4)


func getEgg(birdsType: Birds) {
    print("Дают яички  \(birdsType)")
}

func getMilk(animalType:Animal){
    print("Дает молоко \(animalType)")
}




