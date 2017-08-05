/*Given a positive integer, write a method that returns an array with each individual digit as a separate element.
 Sample input: 1987647
 Sample output: [1, 9, 8, 7, 6, 4, 7]*/

func intToArray(randomNumber: Int) -> [Int] {
    
    let stringNumber = String(randomNumber)
    var separatedNumbers = [String]()
    var returnArray = [Int]()
    
    for number in stringNumber.characters {
        
        separatedNumbers.append(String(number))
    }
    
    for stringNumber in separatedNumbers {
        
        if let intNumber = Int(stringNumber) {
            
            returnArray.append(intNumber)
        }
    }
    
    return returnArray
    
    
}

let int = 1987647

intToArray(randomNumber: int)

/*Given two integers summer and sixteen, write a method that prints to the console each integer from 1-100 with the following exceptions:
 For each number that is a multiple of summer, print “Summer” instead of the number
 For each number that is a multiple of sixteen, print “Sixteen” instead of the number
 For each number that is a multiple of both summer and sixteen, print “SummerSixteen” instead of the number*/

func summerSixteen() {
    
    for i in 1...100 {
        
        if i % 2 == 0 && i % 3 == 0 {
            print("Summer Sixteen!")
        } else if i % 3 == 0 {
            print("Sixteen")
        } else if i % 2 == 0  {
            print("Summer")
        }
    }
}

summerSixteen()

/* Given an array of non-empty strings, write a method that creates a dictionary where for each string in the array, there is a key for the first letter associated with a value for the last letter.
 Sample input: [“rich”, “mahogany”, “many”, “leather”, “bound”, “books”]
 Sample output: {“r” : “h”, “m” : “y”,  “l” : “r”, “b” : “d”, “b” : “s”}*/

func dictionaryOfString(words: [String]) -> [String: String] {
    
    var returnDictionary = [String : String]()
    
    for var word in words {
        
        let keys = word.characters.popFirst()
        let values = word.characters.popLast()
        
        let keyStrings = String(describing: keys)
        let valueStrings = String(describing: values)
        
        
        returnDictionary[keyStrings] = valueStrings
        
    }
    
    return returnDictionary
    
}

let words = ["rich", "mahogany", "many", "leather", "bound", "books"]

dictionaryOfString(words: words)

/*
 
 REVERSING STRINGS AND ARRAYS
 
 */

let testString1 = "Reverse Test"
let palindrome1 = "Racecar"

func reverseString(reverse: String) -> String {
    
    var lowercaseCopy = reverse.lowercased()
    var returnString = ""
    var characterIndex = reverse.characters.count
    
    repeat {
        
        if let lastCharacter = lowercaseCopy.characters.popLast() {
            
            returnString.append(lastCharacter)
            characterIndex -= 1
        }
        
    } while characterIndex > 0
    
    return returnString
}

reverseString(reverse: testString1)

func isPalindrome(word: String) -> Bool {
    
    if reverseString(reverse: word) == word.lowercased() {
        return true
    } else {
        return false
    }
}

isPalindrome(word: palindrome1)

let myFamily = ["Lloyd", "Lulu", "Zeppelin Heaven"]

func reverseArray(reverse: [String]) -> [String] {
    
    var reversedArray = reverse
    var returnArray = [String]()
    var index = reverse.count
    
    repeat {
        
        if let lastWord = reversedArray.popLast() {
            
            returnArray.append(lastWord)
            index -= 1
        }
        
    } while index > 0
    
    return returnArray
}

reverseArray(reverse: myFamily)

/*
 Given an array of numbers, write a method that returns an array with three elements in it. The first element should be a decimal representing the fraction of positive numbers in the array, the second element should be a decimal representing the fraction of zeroes in the array, and the third element should be a decimal representing the fraction of negative numbers in the array.
 Sample input: [0, 42, 1, -1, 42, -50]
 Sample output: [0.500000, 0.166667, 0.333333]
 */

let sampleNumArray = [0, 42, 1, -1, 42, -50]

func intToFloat(numArray: [Int]) -> [Float] {
    
    var returnArray = [Float]()
    var posCount = 0
    var zeroCount = 0
    var negCount = 0
    
    for number in numArray {
        
        if number > 0 {
            
            posCount += 1
            print(posCount)
            let positiveNumFract = Float(posCount) / Float(numArray.count)
            returnArray.append(positiveNumFract)
            
        } else if number == 0 {
            
            zeroCount += 1
            let zeroNumFract = Float(zeroCount) / Float(numArray.count)
            returnArray.append(zeroNumFract)
            
            
        } else if number < 0 {
            
            negCount += 1
            let negativeNumFract = Float(negCount) / Float(numArray.count)
            returnArray.append(negativeNumFract)
            
        }
    }
    
    return returnArray
}

intToFloat(numArray: sampleNumArray)

/*
 Given two non-empty arrays, write a method that maps the contents of one array to the other as key-value pairs in a dictionary. If the 2 arrays do not contain the same amount of objects, use the longer array as the keys and set the extra keys’ values to empty strings.
 Sample input: [1, 2, 3], ["A", "B", "C", "D"]
 Sample output: {“A” : 1, “B” : 2, “C” : 3, “D” : “”}
 */

let numbers = [1, 2, 3]
let letters = ["A", "B", "C", "D"]

func arrayToDictionary(numArray: [Int], letArray: [String]) -> [String : Any] {
    
    var returnDict = [String : Any] ()

    for (index, letters) in letArray.enumerated() {
        
        if index < numArray.count {
            
            returnDict[letters] = numArray[index]
            
        } else {
            
            returnDict[letters] = ""
        }
    }
    
    return returnDict
}

arrayToDictionary(numArray: numbers, letArray: letters)

/*
Given two 2-digit integers write a method that returns YES if the integers share a digit and NO if they do not
*/

let twoDigit1 = 35
let twoDigit2 = 63

func shareADigit(num1: Int, num2: Int) -> Bool {
    
    var num1AsString = String(num1)
    var num2AsString = String(num2)
    
    for numbers in num1AsString.characters {
        
        for numbers2 in num2AsString.characters {
            
            if numbers == numbers2 {
                
                return true
            }
        }
    }
    return false
}

shareADigit(num1: twoDigit1, num2: twoDigit2)

/*
 Given an array containing 3 integers, write a method that returns YES if the 3 integers are evenly spaced and NO if they are not. The array is not necessarily sorted - do not sort the array before implementing the rest of this method.
 Sample inputs: 1) [4, 6, 2] 2) [1, 3, 6]
 Sample outputs: 1) YES 2) NO
 */


//Fibonacci sequence

func numberAtFiboIndex(index: Int) -> Int {
    
    var number = 0
    
    if index == 0 {
        return 0
    } else if index == 1 {
        return 1
    } else {
        number = numberAtFiboIndex(index: index - 2) + numberAtFiboIndex(index: index - 1)
    }
    return number
}

func fibonacci(_ index: Int) -> Int {
    switch index {
    case 0:
        return 0
    case 1:
        return 1
    default:
        return fibonacci(index - 2) + fibonacci(index - 1)
    }
}

numberAtFiboIndex(index: 0)
numberAtFiboIndex(index: 1)
numberAtFiboIndex(index: 2)
numberAtFiboIndex(index: 3)
numberAtFiboIndex(index: 4)
numberAtFiboIndex(index: 5)
numberAtFiboIndex(index: 6)


fibonacci(0)
fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(6)
fibonacci(7)
fibonacci(8)



