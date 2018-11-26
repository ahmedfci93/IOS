//: Playground - noun: a place where people can play

import UIKit

func filterGreaterThanValue(value: Int, numbers:[Int]) -> [Int] {
    var filteredSetOfNumbers = [Int]()
    for num in numbers {
        if num > value {
            filteredSetOfNumbers.append(num)
        }
    }
    return filteredSetOfNumbers
}

func filterWithClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int]{
    var filterNumbers = [Int]()
    for num in numbers {
        if closure(num) {
            filterNumbers.append(num)
        }
    }
    return filterNumbers
}
func isEvenNum (value : Int) -> Bool {
    return value % 2 == 0
}
let filteredList = filterWithClosure(closure: {(num) -> Bool in return num < 5},numbers: [1,2,3,4,10,36,7])
let evenList = filterWithClosure(closure: isEvenNum,numbers: [1,2,3,4,10,36,7])
//let filteredList = filterGreaterThanValue(value: 5, numbers: [1,2,36,7])

print(filteredList)
print(evenList)


