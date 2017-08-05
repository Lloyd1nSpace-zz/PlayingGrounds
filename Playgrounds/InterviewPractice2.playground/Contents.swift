//: Playground - noun: a place where people can play

import UIKit

// Fibonacci Sequence: Write a function that given the index, it returns the Fibonacci number at that index.

func nthIndexFibonacci(_ index: Int) -> Int {
    
    var fibonacci = 0
    
    if index == 0 {
        return 0
    } else if index == 1 {
        return 1
    } else {
        fibonacci = nthIndexFibonacci(index - 2) + nthIndexFibonacci(index - 1)
        return fibonacci
    }
}
nthIndexFibonacci(0)
nthIndexFibonacci(1)
nthIndexFibonacci(2)
nthIndexFibonacci(3)
nthIndexFibonacci(4)
nthIndexFibonacci(5)
nthIndexFibonacci(6)
nthIndexFibonacci(7)
nthIndexFibonacci(8)

// Write a function that, given an Int, return an [Int] example 857 -> [8, 5, 7]

func numberArray(_ number: Int) -> [Int] {
    
    var numArray = [Int]()
    let stringNum = String(number)
    for num in stringNum.characters {
        
        if let int = Int(String(num)) {
            numArray.append(int)
        }
    }
    return numArray
}

numberArray(857)

// Write a function that reverses  an array / string

func reverseString(_ word: String) -> String {
    
    var count = word.characters.count
    var lowercase = word.lowercased().replacingOccurrences(of: " ", with: "")
    var reversed = ""
    
    repeat {
        if let lastLetter = lowercase.characters.popLast() {
            reversed.append(lastLetter)
        }
        count -= 1
    } while count > 0
    
    return reversed
}

let test = "Starbucks"
reverseString(test)

func palindromeCheck(_ word: String) -> Bool {
    
    let noSpace = word.lowercased().replacingOccurrences(of: " ", with: "")
    
    if noSpace == reverseString(word) {
        return true
    }
    return false
}

let palindromeWord1 = "Racecar"
palindromeCheck(palindromeWord1)

func reverseArray(_ array: [String]) -> [String] {
    
    var count = array.count
    var copy = array
    var reversed = [String]()
    
    repeat {
        if let lastItem = copy.popLast() {
            reversed.append(lastItem)
        }
        count -= 1
    } while count > 0
    return reversed
}

let myFam = ["Lulu", "Zeppelin", "Lloyd", "Jenny", "Wayne", "Jaclyn", "Elizabeth", "Miriam", "Antoine", "Dad"]
reverseArray(myFam)

// Write a function that checks if the first letter in a String is capital)

func capitalLetterCheck(word: String) -> Bool {
    
    for character in word.characters {
        
        if String(character) == String(character).uppercased() {
            return true
        }
        return false
    }
    return false
}

let capitalCheck = "Macbook"
let capitalCheck2 = "macbook Pro"
capitalLetterCheck(word: capitalCheck)
capitalLetterCheck(word: capitalCheck2)

