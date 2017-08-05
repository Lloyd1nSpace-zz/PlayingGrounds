//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// Numbers from 1-100, if divisible by 3 'Fizz', if divisible by 5 'Buzz', if divisible by 3 & 5 'FizzBuzz'
func fizzBuzz() -> String {
    var fizzy = ""
    for i in 1...100 {
        let divisibleBy3 = i % 3 == 0
        let divisibleBy5 = i % 5 == 0
        if divisibleBy3 && divisibleBy5 {
            fizzy = "FizzBuzz"
        } else if divisibleBy5 {
            fizzy = "Buzz"
        } else if divisibleBy3 {
            fizzy = "Fizz"
        }
        fizzy = "\(i)"
    }
    return fizzy
}

fizzBuzz()

// Write a function that takes in an [Int] & prints the array sorted numerically.
var integers = [4, 11, 2, 63]

func sortArray(_ intArray: inout [Int]) -> [Int] {
    var returnArray = intArray
    for i in 0..<intArray.count {
        for n in 0..<returnArray.count {
            if intArray[i] < returnArray[n] {
                let int = intArray[i]
                intArray[i] = returnArray[n]
                returnArray[n] = int
            }
        }
    }
    return returnArray
}

sortArray(&integers)

//func sortArrayWoBruteForce(_ integers: inout [Int]) -> [Int] {
//    return integers.sorted()
//}
//
//sortArrayWoBruteForce(&integers)
