import UIKit


// MARK: - onlyThree - приймає рейндж, пробігається по ньому і повертає масив тільки з кратними числами 3

func onLyTree(_ range: ClosedRange<Int>) -> [Int] {
    
    let result = Array(range).filter { $0 % 3 == 0 }
        return result
    }

// print(onLyTree(12...100))

// MARK: - printDuplicates - приймає два масиви, виводить у консоль лише числа які є у першому, та другому

func printDuplicates(_ arrayOne: [Int], _ arrayTwo: [Int]) {
    
    let duplicates = arrayOne.filter {  arrayTwo.contains($0) }
        print("Одинаковые числа двух массивов \(duplicates)")
    }
    
printDuplicates([20, 13, 31, 37 ], [13, 20, 14, 53])
  
// MARK: - symbolCount - приймає строку, рахує скільки яких символів у ній є, повертає результат (тип результату на Ваш розсуд, але я захочу виконати на ньому один із циклів)
  

func symbolCount(_ myString: String) -> [Character: Int] {
  
    var newDictionary: [Character: Int] = [:]
  
    for char in myString {
           newDictionary[char, default: 0] += 1
       }
    return newDictionary
}

let resultOne = symbolCount("параллелепипед")

// MARK: - sameCharacters - приймає дві строки та completion (кложуру), після обробки строк, кложура приймає два набори символів і виводить у консоль тільки ті, що повторюються в обох рядках.

func sameCharacters(_ string1: String, _ string2: String, _ completion: ([Character]) -> Void) {
    
    let array1 = string1.map { $0 }
    let array2 = string2.map { $0 }
    
    let commonChar = array1.filter { array2.contains($0) }
    completion(commonChar)

}

sameCharacters("Алена", "Виталик") { commonCharacters in
    print(commonCharacters)
}
