//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Write a function that reverses a string
func reverseString(_ word: String) -> String {
    
    var copy = word.lowercased().replacingOccurrences(of: " ", with: "")
    var reversed = ""
    repeat {
        if let lastLet = copy.characters.popLast() {
            reversed.append(lastLet)
        }
    } while copy.characters.count > 0
    return reversed
}

reverseString(str)

// Write a function that accepts a String & Returns a Bool of whether or not it's a Palindrome
func palindromeCheck(_ word: String) -> Bool {
    let formattedWord = word.lowercased().replacingOccurrences(of: " ", with: "")
    if formattedWord == reverseString(word) {
        return true
    }
    return false
}

let palindrome = "Racecar"
palindromeCheck(palindrome)
palindromeCheck(str)

// Write a function that given two arrays, finds the intersection
func intersectionOfArrays(a: [Any], b: [Any]) -> [Any] {
    
    let copyA = Set(a as! [Int])
    let copyB = Set(b as! [Int])
    return Array(copyA.intersection(copyB))
}

let numberArray = [0, 0, 2, 2, 3, 3, 4]
let numArray2 = [2, 3, 4, 5, 6, 7, 8]
intersectionOfArrays(a: numberArray, b: numArray2)

// Sets functionality
let set1 = Set<Int>()

// Ternary Conditional Operator -- The Swifty way of doing an if / else statement
let check: String? = palindromeCheck(palindrome) ? "Racecar" : "Who knows"

// Using nil coalescing operator with Ternary Conditional Operator
let check2 = check ?? "Who knows"
