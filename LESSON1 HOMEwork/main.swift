//
//  main.swift
//  LESSON1 HOMEwork
//
//  Created by Олег Елисеев on 21.09.2023.
//

import Foundation

//1

var eventsDict = [String: [String]]()

func addEvent(date: String, event: String) {
    if var events = eventsDict[date] {
        events.append(event)
        eventsDict[date] = events
    } else {
        eventsDict[date] = [event]
    }
}

func showEvents(date: String) {
    if let events = eventsDict[date] {
        for event in events {
            print(event)
        }
    } else {
        print("На указанную дату нет событий")
    }
}

func mainMenu() {
    var isRunning = true
    while isRunning {
        print("Выберите опцию:")
        print("1. Добавить мероприятие")
        print("2. Показать мероприятия на определенную дату")
        print("3. Выйти из приложения")
        
    if let choice = readLine(), let option = Int(choice) {
    switch option {
    case 1:
        print("Введите дату:")
    if let date = readLine() {
        print("Введите событие:")
    if let event = readLine() {
        addEvent(date: date, event: event)
        }
    }
    case 2:
        print("Введите дату:")
    if let date = readLine() {
            showEvents(date: date)
                }
    case 3:
        isRunning = false
    default:
        print("Неверный выбор. Попробуйте снова.")
        }
     }
   }
}


mainMenu()


//2

private var settingsDict = [String: String]()

func setSetting(key: String, value: String) {
    settingsDict[key] = value
}

setSetting(key: "language", value: "English")
setSetting(key: "theme", value: "Dark")

print(settingsDict)

setSetting(key: "theme", value: "Light")

print(settingsDict)




//3

var dictionary = ["grey": "серый", "cat": "кот"]

func translateWord(word: String) -> String? {
    return dictionary[word]
}

func userInterface() {
    var isRunning = true
    while isRunning {
        print("Выберите опцию:")
        print("1. Перевести слово")
        print("2. Выйти из приложения")
        
        if let choice = readLine(), let option = Int(choice) {
        switch option {
            case 1:
        print("Введите слово на английском:")
                if let word = readLine() {
                    if let translation = translateWord(word: word) {
        print("Перевод: \(translation)")
                    } else {
        print("Слово не найдено в словаре")
        }
    }
        case 2:
                isRunning = false
        default:
        print("Неверный выбор")
            }
        }
    }
}

userInterface()

//4


    struct CountryCityDatabase {
    var data: [String: Set<String>] = [:]

    
    mutating func addCity(to country: String, city: String) {
        if var cities = data[country] {
            cities.insert(city)
            data[country] = cities
        } else {
            data[country] = [city]
        }
    }

    
    mutating func removeCity(from country: String, city: String) {
        if var cities = data[country] {
            cities.remove(city)
            if cities.isEmpty {
                data[country] = nil
            } else {
                data[country] = cities
            }
        }
    }

    
    func viewCities(of country: String) {
        if let cities = data[country] {
            print("Города в стране \(country):")
            for city in cities {
                print(city)
            }
        } else {
            print("Страна \(country) не найдена в базе данных или у нее нет городов.")
        }
    }
}

    func showMenu() {
    var database = CountryCityDatabase()

    while true {
        print("\nМеню:")
        print("1. Добавить город к стране")
        print("2. Удалить город из страны")
        print("3. Просмотреть города страны")
        print("4. Выйти из приложения")
        print("Выберите действие (1/2/3/4):", terminator: " ")

        if let choice = readLine() {
            switch choice {
            case "1":
                print("Введите название страны:", terminator: " ")
                let country = readLine() ?? ""
                print("Введите название города:", terminator: " ")
                let city = readLine() ?? ""
                database.addCity(to: country, city: city)
                print("Город \(city) добавлен к стране \(country).")
            case "2":
                print("Введите название страны:", terminator: " ")
                let country = readLine() ?? ""
                print("Введите название города:", terminator: " ")
                let city = readLine() ?? ""
                database.removeCity(from: country, city: city)
                print("Город \(city) удален из страны \(country).")
            case "3":
                print("Введите название страны, чтобы просмотреть города:", terminator: " ")
                let country = readLine() ?? ""
                database.viewCities(of: country)
            case "4":
                exit(0)
            default:
                print("Некорректный выбор. Пожалуйста, выберите действие из меню.")
            }
        }
    }
}


showMenu()

//5

func commonElements(array1: [Int], array2: [Int]) -> [Int] {
    
    let set1 = Set(array1)
    let set2 = Set(array2)
    
   
    let intersection = set1.intersection(set2)
    
    return Array(intersection)
}


let arrayA = [1, 2, 3, 4, 5]
let arrayB = [3, 4, 5, 6, 7]

let result = commonElements(array1: arrayA, array2: arrayB)
print(result)


//6

var friendsList: [String: Set<String>] = [
    "User1": ["Friend1", "Friend2", "Friend3"],
    "User2": ["Friend2", "Friend4", "Friend5"],
    "User3": ["Friend1", "Friend3", "Friend6"]
]


func findCommonFriends(user1: String, user2: String) -> Set<String>? {
    guard let friendsUser1 = friendsList[user1], let friendsUser2 = friendsList[user2] else {
        
        return nil
    }

    
    let commonFriends = friendsUser1.intersection(friendsUser2)
    return commonFriends
}

let user1 = "User1"
let user2 = "User2"

if let commonFriends = findCommonFriends(user1: user1, user2: user2) {
    print("Общие друзья между \(user1) и \(user2): \(commonFriends)")
} else {
    print("Один из пользователей не найден в списке друзей.")
}


//7

func uniqueElements(array: [Int]) -> [Int] {
    let set = Set(array)
    let uniqueArray = Array(set)
    return uniqueArray
}

let inputArray = [1, 2, 3, 1, 2, 4, 5]
let resultArray = uniqueElements(array: inputArray)
print(resultArray)


//8

var phoneBook: [String: String] = [:]

func addNumber(name: String, number: String) {
    phoneBook[name] = number
}

func removeNumber(name: String) {
    phoneBook[name] = nil
}

func findNumber(name: String) -> String? {
    return phoneBook[name]
}



addNumber(name: "Yulia", number: "7951432536")
addNumber(name: "Oleg", number: "787654321")
addNumber(name: "Lea", number: "787876355")


let yuliaNumber = findNumber(name: "Yulia")
let olegNumber = findNumber(name: "Oleg")
let leaNumber = findNumber(name: "Lea")
let unknownNumber = findNumber(name: "Oleg")

print("Yulia's number: \(yuliaNumber ?? "Not found")")
print("Oleg's number: \(olegNumber ?? "Not found")")
print("Lea's number: \(leaNumber ?? "Not found")")
print("Unknown's number: \(unknownNumber ?? "Not found")")


removeNumber(name: "Oleg")


let olegNumberAfterDeletion = findNumber(name: "Oleg")
print("Oleg's number after deletion: \(olegNumberAfterDeletion ?? "Not found")")
