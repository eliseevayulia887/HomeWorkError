//
//  main.swift
//  LESSON1 HOMEwork
//
//  Created by Олег Елисеев on 21.09.2023.
//

import Foundation
//1

func bubbleSort(array: [Int]) -> [Int] {
    var sortedArray = array
    
    for i in 0..<sortedArray.count {
        for j in 0..<sortedArray.count - 1 - i {
            if sortedArray[j] > sortedArray[j + 1] {
                sortedArray.swapAt(j, j + 1)
        }
     }
  }
    return sortedArray
 }
        
let numbers = [2, 9, 2, 3, 1]
    
let sortedNumbers = bubbleSort(array: numbers)

print(sortedNumbers)
    

//2

func isPalindrome(_ string: String) -> Bool {
    
    let lowercasedString = string.lowercased()
    
    let reversedString = String(lowercasedString.reversed())
    
    return lowercasedString == reversedString
}

let word = "level"
let isPalinrome = isPalindrome(word)

print(isPalinrome)


let phrase = "my name is yulia"

let isPhrasePalindrome = isPalindrome(phrase)

print(isPhrasePalindrome)



//3


/*var arrayCount: Int? = Int(readLine() ?? "0")


var arrayOfElements: [Int] = []

for _ in 0...(arrayCount ?? 0) {
    let element: Int? = Int(readLine() ?? "")

    arrayOfElements.append(element ?? 0)

}

var setOfElements: Set = Set(arrayOfElements)

print(setOfElements.reduce(0, +)) */


//4

func celsiusToFahrenheit(_ celsius: Double) -> Double {
    
    let fahrenheit = (celsius * 9.0/5.0) + 32.0
    
    return fahrenheit
}
 
let celsiusTemperature = 25.0

let fahrenheitTemperature = celsiusToFahrenheit(celsiusTemperature)

print(fahrenheitTemperature)

//5

struct Contact {
    let name: String
    
    let phone: String
    
    let email: String
}

let contacts = [
    Contact(name: "Yulia", phone: "89084843188", email: "poletaeva24.com")
]

func searchContactByName(_ name: String) -> Contact? {
    
    for contact in contacts {
        
        if contact.name.lowercased() == name.lowercased() {
            
            return contact
        }
    }
    return nil
}

let searchedContact = searchContactByName("John Doe")

if let contact = searchedContact {
    
    print(contact.phone)
    
    print(contact.email)
}


//6

func reverseFirtAndLast<T>(_ array: [T]) -> [T] {
    var newArray = array
    if newArray.count >= 2 {
        let firstElement = newArray.removeFirst()
        let lastElement = newArray.removeLast()
        newArray.insert(lastElement, at: 0)
        newArray.append(firstElement)
}
    return newArray
}

let originalArray = [1, 2, 3, 4, 5]
let reversedArray = reverseFirtAndLast(originalArray)
print(reversedArray)


//7


func capitalizeWords(inString str: String) -> String {
    let words = str.components(separatedBy: CharacterSet.whitespaces)
    var capitalizedWords: [String] = []
    
    for word in words {
        let capitalizedWord = word.prefix(1).capitalized + word.dropFirst()
        capitalizedWords.append(capitalizedWord)
    }
    
    return capitalizedWords.joined(separator: " ")
}

let inputString = "шла маша по шоссе"
let resultString = capitalizeWords(inString: inputString)
print(resultString)



//8

func dayOfWeekToInt(day: String) -> Int? {
    let weekdays = ["понедельник", "вторник", "среда", "четверг", "пятница", "суббота", "воскресенье"]
    
    if let index = weekdays.firstIndex(of: day.lowercased()) {
        return index + 1 // Добавляем 1, так как индексы начинаются с 0
    }
    
    return nil // Если день недели не найден, возвращаем nil
}

// Пример использования функции:
let dayOfWeekString = "Среда"
if let dayOfWeekInt = dayOfWeekToInt(day: dayOfWeekString) {
    print("День недели в числовом формате: \(dayOfWeekInt)")
} else {
    print("Недопустимый день недели.")
}


//9

func areAllCharactersUnique(_ string: String) -> Bool {
    var characterSet = Set<Character>()
    
    for char in string {
        if characterSet.contains(char) {
            return false
        }
        characterSet.insert(char)
    }
    
    return true
}

let string1 = "abcdefg"
print(areAllCharactersUnique(string1))

let string2 = "hello"
print(areAllCharactersUnique(string2))


//10

func combineArrays<T>(array1: [T], array2: [T]) -> [T] {
    return array1 + array2
}

let array1 = [1, 2, 3]
let array2 = [4, 5, 6]
let combinedArray = combineArrays(array1: array1, array2: array2)
print(combinedArray)


//11

func countVowels(inString str: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var vowelCount = 0
    
    for char in str {
        if vowels.contains(char) {
            vowelCount += 1
        }
    }
    
    return vowelCount
}

// Пример использования функции:

let inputString1 = "Hello, World!"
let numberOfVowels = countVowels(inString: inputString1)
print("Количество гласных в строке: \(numberOfVowels)")

    
    
//12

func removeDuplicates<T: Equatable>(fromArray array: [T]) -> [T] {
    var uniqueArray: [T] = []

    for element in array {
        if !uniqueArray.contains(element) {
            uniqueArray.append(element)
        }
    }

    return uniqueArray
}

let arrayWithDuplicates = [1, 2, 2, 3, 4, 4, 5]
let arrayWithoutDuplicates = removeDuplicates(fromArray: arrayWithDuplicates)
print(arrayWithoutDuplicates)

//13

func sumOfNumbers(from1ToN n: Int) -> Int {
    var sum = 0
    
    for i in 1...n {
        sum += i
    }
    
    return sum
}

let n = 5
let result1 = sumOfNumbers(from1ToN: n)
print("Сумма чисел от 1 до \(n) равна \(result1)")


//14

func findLongestWord(inString str: String) -> String {
    let words = str.components(separatedBy: CharacterSet.whitespaces)
    var longestWord = ""
    
    for word in words {
        if word.count > longestWord.count {
            longestWord = word
        }
    }
    
    return longestWord
}


let inputString2 = "Это пример строки с разными словами"
let longestWord = findLongestWord(inString: inputString2)
print("Самое длинное слово: \(longestWord)")

//15

func truncateString(_ str: String, toLength length: Int) -> String {
    if str.count <= length {
        return str
    } else {
        let endIndex = str.index(str.startIndex, offsetBy: length)
        let truncatedString = str[..<endIndex]
        return truncatedString + "..."
    }
}

// Пример использования функции:

let inputString3 = "Это строка, которую нужно сократить до определенной длины."
let truncated = truncateString(inputString3, toLength: 20)
print(truncated)

//16

func combineArraysWithoutDuplicates(_ array1: [Int], _ array2: [Int]) -> [Int] {
    let set1 = Set(array11)
    let set2 = Set(array12)
    let combinedSet = set1.union(set2)
    return Array(combinedSet)
}

// Пример использования функции:
let array11 = [1, 2, 3, 4, 5]
let array12 = [3, 4, 5, 6, 7]
let combinedArray13 = combineArraysWithoutDuplicates(array11, array12)
print(combinedArray13) // Выведет: [1, 2, 3, 4, 5, 6, 7]

//17

func countWordsWithLength(_ string: String, _ length: Int) -> Int {
    // Разделение строки на слова по пробелам
    let words = string.components(separatedBy: CharacterSet.whitespacesAndNewlines)
    
    // Подсчет количества слов с заданной длиной
    var count = 0
    for word in words {
        if word.count == length {
            count += 1
        }
    }
    
    return count
    }

    // Пример использования функции
    let inputString5 = "Привет, как дела? У меня все хорошо!"
    let wordLength = 4

    let result = countWordsWithLength(inputString5, wordLength)
    print("Количество слов длиной \(wordLength) в строке: \(result)")
    

//18

func playGuessingGame() {
    let targetNumber = Int.random(in: 1...100)
    var guess = 0
    var attempts = 0
    
    print("игра угадывания чисел!")
    print("Компьютер выбрал число от 1 до 100")
    
    while guess != targetNumber {
        guard let input = readLine(), let currentGuess = Int(input) else {
            print("Пожалуйста, введите целое число")
            return
        }
        
        guess = currentGuess
        attempts += 1
        if guess < targetNumber {
            print("Загаданное число больше")
        } else if guess > targetNumber {
            print("Загаданное число меньше")
        } else {
            print("Поздравляю! Вы угадали число за \(attempts) попыток!")
            break
        }
    }
    }

    playGuessingGame()

