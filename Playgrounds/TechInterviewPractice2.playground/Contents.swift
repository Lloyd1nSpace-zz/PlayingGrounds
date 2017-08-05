//: Playground - noun: a place where people can play

import UIKit

// Write a function that, given an Int, return an [Int] example 857 -> [8, 5, 7]
/*Given a positive integer, write a method that returns an array with each individual digit as a separate element.
 Sample input: 1987647
 Sample output: [1, 9, 8, 7, 6, 4, 7]*/
func separate(_ int: Int) -> [Int] {
    var stringInt = String(describing: int)
    var returnArray = [Int]()
    for number in stringInt.characters {
        if let intConv = Int(String(number)) {
            returnArray.append(intConv)
        }
    }
    return returnArray
}

let numbers = 857
let numbers2 = 1987647
separate(numbers)
separate(numbers2)

/*Given two integers summer and sixteen, write a method that prints to the console each integer from 1-100 with the following exceptions:
 For each number that is a multiple of summer, print “Summer” instead of the number
 For each number that is a multiple of sixteen, print “Sixteen” instead of the number
 For each number that is a multiple of both summer and sixteen, print “SummerSixteen” instead of the number*/
func divisibleBy(summer: Int, sixteen: Int) {
    for i in 1...100 {
        
        let divisibleBySummer = i % summer == 0
        let divisibleBySixteen = i % sixteen == 0
        let divisibleByBoth = divisibleBySummer && divisibleBySixteen
        
        if divisibleByBoth {
            print("SummerSixteen")
        }
        else if divisibleBySixteen {
            print("Sixteen")
        }
        else if divisibleBySummer {
            print("Summer")
        }
        else {
            print(i)
        }
    }
}
divisibleBy(summer: 10, sixteen: 3)

/* Given an array of non-empty strings, write a method that creates a dictionary where for each string in the array, there is a key for the first letter associated with a value for the last letter.
 Sample input: [“rich”, “mahogany”, “many”, “leather”, “bound”, “books”]
 Sample output: {“r” : “h”, “m” : “y”,  “l” : “r”, “b” : “d”, “b” : “s”}*/
func dictionary(outOf array: [String]) -> [String: String] {
    var returnDict = [String: String]()
    array.map { (word) -> String in
        var copy = word
        guard let firstLet = copy.characters.popFirst(),
            let lastLet = copy.characters.popLast() else {
                return returnDict
        }
        returnDict[String(describing: firstLet)] = String(describing: lastLet)
    }
    
//    for var word in array {
//        guard let firstLet = word.characters.popFirst(),
//            let lastLet = word.characters.popLast() else {
//                return returnDict
//        }
//        returnDict[String(describing: firstLet)] = String(describing: lastLet)
//    }
    return returnDict
}

let randomItems = ["rich", "mahogany", "many", "leather", "bound", "books"]
dictionary(outOf: randomItems)

/*
 Given an array of numbers, write a method that returns an array with three elements in it. The first element should be a decimal representing the fraction of positive numbers in the array, the second element should be a decimal representing the fraction of zeroes in the array, and the third element should be a decimal representing the fraction of negative numbers in the array.
 Sample input: [0, 42, 1, -1, 42, -50]
 Sample output: [0.500000, 0.166667, 0.333333]
 */



/*
 Given two non-empty arrays, write a method that maps the contents of one array to the other as key-value pairs in a dictionary. If the 2 arrays do not contain the same amount of objects, use the longer array as the keys and set the extra keys’ values to empty strings.
 Sample input: [1, 2, 3], ["A", "B", "C", "D"]
 Sample output: {“A” : 1, “B” : 2, “C” : 3, “D” : “”}
 */


/*
 Given two 2-digit integers write a method that returns YES if the integers share a digit and NO if they do not
 */

/*
 Given an array containing 3 integers, write a method that returns YES if the 3 integers are evenly spaced and NO if they are not. The array is not necessarily sorted - do not sort the array before implementing the rest of this method.
 Sample inputs: 1) [4, 6, 2] 2) [1, 3, 6]
 Sample outputs: 1) YES 2) NO
 */


//REVERSING STRINGS AND ARRAYS
func reverse(_ word: String) -> String {
    var copy = word.lowercased().replacingOccurrences(of: " ", with: "")
    var reversed = ""
    repeat {
        if let lastLetter = copy.characters.popLast() {
            reversed.append(lastLetter)
        }
    } while copy.characters.count > 0
    return reversed
}

let word = "Check"
reverse(word)

func reverse(_ array: [String]) -> [String] {
    var copy = array
    var reversed = [String]()
    repeat {
        if let lastItem = copy.popLast() {
            reversed.append(lastItem)
        }
    } while copy.count > 0
    return reversed
}

let array = ["Lloyd", "Lulu", "Zeppelin"]
reverse(array)

// Write a function that accepts a String & Returns a Bool of whether or not it's a Palindrome
func isPalindrome(_ word: String) -> Bool {
    return word.lowercased().replacingOccurrences(of: " ", with: "") == reverse(word)
}

let palindrome = "Racecar"
let notPalindrome = "Check Check 1, 2, 1, 2"
isPalindrome(palindrome)
isPalindrome(notPalindrome)

// Write a function that checks if the first letter in a String is capital)
func capitalCheck(_ word: String) -> Bool {
    return word == word.capitalized
}

let capitalized = "Francesca"
let notCap = "francesca"
capitalCheck(capitalized)
capitalCheck(notCap)

// Write a function that given two arrays, finds the intersection
func intersection(_ array: [String]) -> [String] {
    let copy = Set(array)
    return Array(copy.intersection(copy))
}

let sampleArray = ["1", "2", "2", "2", "3", "4", "5"]
intersection(sampleArray)

//Fibonacci sequence: Write a function that given the index, it returns the Fibonacci number at that index.
func fiboFinder(_ index: Int) -> Int {
    switch index {
    case 0:
        return 0
    case 1:
        return 1
    default:
        return fiboFinder(index - 2) + fiboFinder(index - 1)
    }
}

fiboFinder(0)
fiboFinder(1)
fiboFinder(2)
fiboFinder(3)
fiboFinder(4)
fiboFinder(5)
fiboFinder(6)
fiboFinder(7)
fiboFinder(8)
fiboFinder(9)
