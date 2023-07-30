import UIKit

// MARK: - iAmOlder - приймає 2 числа, перевіряє хто старший та повертає bool

// Если следовать логике названия функции, то функции проверяет кто старше меня, значит первое число я буду записывать сама, так же пришлось сделать проверку на возраст второго числа, чтоб второй пользователь не писал неравдоподобные значения

func iAmOlder(_ myAge: Int, _ yourAge: Int) -> Bool {
    if yourAge > 100 || yourAge <= 0  {
        fatalError("Вы ввели неправдоподобный возраст, пожалуйста повторите запрос снова")
    }
    return myAge > yourAge
}

//print(iAmOlder(24, 43))


// MARK: - yearOfBirth - приймає 2 числа (ваш вік і поточний рік), обчислює рік народження та виводить у консоль

func yearOfBirth(_ age: Int, _ year: Int) {
    if age <= 0 || age > 120 {
        fatalError("Вы ввели неправдоподобный возраст, пожалуйста повторите запрос снова")
    } else if year != 2023 {
        fatalError("Извините, но по нашим данным сейчас 2023 год (данные будут обновляться), пожалуйста укажите правильный год")
    }
    
    let myYearOfBirth = year - age
    print("Вы \(myYearOfBirth) года рождения")
}

yearOfBirth(25, 2023)

//MARK: - onlyEvenNumbers - приймає range чисел та виводить у консоль тільки парні числа

func onlyEvenNumbers(_ range: [Int]) {
    if range.isEmpty {
        fatalError("Мы не можем вывести ваш запрос, пожалуста не оставляйте пустое значение")
    }
    
    for item in range {
        if item % 2 == 0 {
            print(item)
        }
    }
}

onlyEvenNumbers([20,32,12,54,643,1,43])

//MARK: - getSum - приймає 4 числа, з яких перші 2 додає, після чого множить на третє і знаходить залишок від поділу з четвертого числа - виводить у консоль та повертає

// Я приняла решение объявить тип данных Double, так как это функция выполняет роль калькулятора и возможно пользователь захочет вычислять не только целые числа , а еще десятичные цифры, так как xCode мне сказал что оператор % - только для целых чисел , он предложил использовать метод truncatingRemainder(dividingBy: ) - чтоб вычислить остаток от деления для типа данных double

func getSum(_ number1: Double, _ number2: Double, _ number3: Double, _ number4: Double ) -> Double {
 
    let sum = (number1 + number2) * number3.truncatingRemainder(dividingBy: number4)
    print(sum)
    return sum
    
    
}

let result = getSum(20, 24, 12.2, 13)

// ИЛИ если будут только  целые числами

func getSum2(_ number1: Int, _ number2: Int, _ number3: Int, _ number4: Int ) -> Int {
 
    let sum2 = (number1 + number2) * number3 % number4
    print(sum2)
    return sum2
}

let result2 = getSum2(10, 20, 2, 2)
