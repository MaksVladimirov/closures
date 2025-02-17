import Foundation

// 1. Сортировка массива с помощью замыкания
var numbers = [5, 2, 9, 1, 7, 3]

// Сортировка по возрастанию
let sortedAscending = numbers.sorted { $0 < $1 }
print("Сортировка по возрастанию:", sortedAscending)

// Сортировка по убыванию
let sortedDescending = numbers.sorted { $0 > $1 }
print("Сортировка по убыванию:", sortedDescending)

print("\n---------------------------\n")

// 2. Метод, принимающий имена друзей и добавляющий их в массив
func getFriends(names: String...) -> [String] {
    return names
}

let friends = getFriends(names: "Андрей", "Мария", "Иван", "Виктория", "Александр", "Елена")

// Сортировка массива по длине имени
let sortedFriends = friends.sorted { $0.count < $1.count }
print("Отсортированные имена по длине:", sortedFriends)

print("\n---------------------------\n")

// 3. Создание словаря (ключ - длина имени, значение - имя)
var friendsDictionary: [Int: [String]] = [:]

for friend in friends {
    let length = friend.count
    friendsDictionary[length, default: []].append(friend)
}

print("Словарь имен по длине:", friendsDictionary)

print("\n---------------------------\n")

// 4. Функция, принимающая ключ и выводящая ключ + значение
func printNames(for length: Int) {
    if let names = friendsDictionary[length] {
        print("Длина имени: \(length), имена: \(names)")
    } else {
        print("Нет имен с длиной \(length) символов.")
    }
}

printNames(for: 5)
printNames(for: 7)
printNames(for: 10)

print("\n---------------------------\n")

// 5. Функция, проверяющая два массива на пустоту
func checkAndFillArrays(strings: inout [String], numbers: inout [Int]) {
    if strings.isEmpty {
        strings.append("Default String")
    }
    
    if numbers.isEmpty {
        numbers.append(0)
    }
    
    print("Массив строк:", strings)
    print("Массив чисел:", numbers)
}

var emptyStrings: [String] = []
var emptyNumbers: [Int] = []

checkAndFillArrays(strings: &emptyStrings, numbers: &emptyNumbers)
