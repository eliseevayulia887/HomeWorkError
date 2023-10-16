//
//  main.swift
//  LESSON1 HOMEwork
//
//  Created by Олег Елисеев on 21.09.2023.
//

/*1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
6. Вывести значения свойств экземпляров в консоль.

1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
2. Описать пару его наследников TrunkCar и SportCar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет TrunkCar, а какие – SportCar. Добавить эти действия в перечисление.
4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
5. Создать несколько объектов каждого класса. Применить к ним различные действия.
6. Вывести значения свойств экземпляров в консоль.*/


//1

enum engineState {
     case start, stop
 }

 enum AreWindowsOpen {
     case open, close
 }
 enum trunkState {
     case full, empty
 }
 struct car {
     let brandAuto : String
     var color : String
     mutating func changeColor(c:String) {
         switch c {
         case "white":
             self.color = "white"
         case "black":
             self.color = "black"
         case "gray":
             self.color = "gray"
         default:
             print("Input error.")
         }
     }
     let yearOfManufacture : Int
     var trunkVolume : Double {
         willSet {
             if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                 let space = trunkVolume - newValue
                 print ("\(brandAuto) trunk free: \(space)")
             } else { print("Input error or \(brandAuto) trunk is full.")}
         }
     }
     var engineState : engineState {
         willSet {
             if newValue == .start {
                 print ("\(brandAuto) engine is on")
             } else {print("\(brandAuto) engine is off")}
         }
     }
     var AreWindowsOpen : AreWindowsOpen {
         willSet {
             if newValue == .open {
                 print("\(brandAuto) windows are open")
             } else { print("\(brandAuto) windows are close") }
         }
     }
     var trunkState : trunkState
     mutating func emptyTrunck() {
         self.trunkState = .empty
         print ("\(brandAuto) trunck is empty")
     }
 }

 struct truck {
     let brandTruck : String
     var color : String
     mutating func changeColor(c:String) {
         switch c {
         case "white":
             self.color = "white"
         case "black":
             self.color = "black"
         case "red":
             self.color = "red"
         default:
             print("Input error.")
         }
     }
     let yearOfManufacture : Int
     var truckVolume : Double {
         willSet {
             if (trunkState == .empty) && (truckVolume > 0) && (truckVolume != 0) && (newValue < truckVolume) {
                 let space = truckVolume - newValue
                 print ("\(brandTruck) trunk free: \(space)")
             } else { print("Input error or \(brandTruck) trunk is full.")}
         }
     }
     var engineState : engineState {
         willSet {
             if newValue == .start {
                 print ("\(brandTruck) engine is on")
             } else {print("\(brandTruck) engine is off")}
         }
     }
     var AreWindowsOpen : AreWindowsOpen {
         willSet {
             if newValue == .open {
                 print("\(brandTruck) windows are open")
             } else { print("\(brandTruck) windows are close") }
         }
     }
     var trunkState : trunkState
     mutating func emptyTrunck() {
         self.trunkState = .empty
         print ("\(brandTruck) trunck is empty")
     }
 }

 var car1 = car(brandAuto: "infiniti",  color: "clear", yearOfManufacture: 2018, trunkVolume: 580.0 , engineState: .stop, AreWindowsOpen: .open, trunkState: .empty)
 

 var truck1 = truck(brandTruck: "Chevrolet",  color: "clear", yearOfManufacture: 2013, truckVolume: 15000.0, engineState: .start, AreWindowsOpen: .close, trunkState: .empty)


 car1.engineState = .start
 car1.trunkVolume = 580.0
 car1.changeColor(c: "red")

 truck1.engineState = .stop
 truck1.AreWindowsOpen = .close


//1

enum nitro{
    case nitroOn
    case nitroOff
}
enum luggage{
    case trunkIsFull
    case TrunkIsEmpty
}
class Car{
    var brand: String
    var release: Int
    init(brand: String, release: Int){
        self.brand = brand
        self.release = release
    }
}
class trunkCar: Car{
    var trunk: luggage
    init(brand: String, release: Int, trunk: luggage){
        self.trunk = trunk
        super.init(brand: brand, release: release)
    }
    func trunkState(){
        if trunk == .trunkIsFull {
            print("Багажник полон")
        } else{
            print("Багажник пуст")
        }
    }
}
class sportCar: Car{
    var goFast: nitro
    init(brand: String, release: Int, goFast: nitro){
        self.goFast = goFast
        super.init(brand: brand, release: release)
    }
    func nitroState(){
        if goFast == .nitroOn {
            print("sports car goes fasters")
        } else{
            print("sports car goes lower ")
        }
    }
}

let truck1000 = trunkCar(brand: "Chevrolet", release: 2013, trunk: .trunkIsFull)
truck1000.trunkState()

let mitsubisi = sportCar(brand: "mitsubisi", release: 2019, goFast: .nitroOn)
mitsubisi.nitroState()
