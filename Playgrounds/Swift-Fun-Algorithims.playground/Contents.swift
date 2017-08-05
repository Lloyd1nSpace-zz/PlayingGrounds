// This playground follows the Lets Build That App YouTube Channel's Fun Algorithims series to brush up on common technical interview  / whiteboarding questions. These solutions are all in Swift 3!

// Fun Algorithim #1: FizzBuzz - Write a function that goes through 1-100, if the number is divisble by 3 return "Fizz", if the number is divisible by 5 return "Buzz" & if the number is divisible by 3 & 5 return "FizzBuzz", otherwise just return the number itself.
func fizzBuzz() -> String {
    var fizzBuzz = ""
    for i in 1...100 {
        let divisibleBy3 = i % 3 == 0
        let divisibleBy5 = i % 5 == 0
        let divisibleByBoth = divisibleBy3 && divisibleBy5
        
        if divisibleByBoth {
            fizzBuzz = "FizzBuzz"
            print("FizzBuzz")
        } else if divisibleBy3 {
            fizzBuzz = "Fizz"
            print("Fizz")
        } else if divisibleBy5 {
            fizzBuzz = "Buzz"
            print("Buzz")
        } else {
            fizzBuzz = "\(i)"
            print("\(i)")
        }
    }
    return fizzBuzz
}

fizzBuzz()

// Fun Algorithim #2: Binary Search - Given an array of integers, you want to search through these integers, return true if you find the search value, otherwise return false
let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]

// Linear approach, only most efficient when dealing with smaller data sets (f(n) times)
func linearSearchForSearchValue(searchValue: Int, numbers: [Int]) -> Bool {
    for num in numbers {
        if num == searchValue {
            return true
        }
    }
    return false
}

linearSearchForSearchValue(searchValue: 3, numbers: numbers)

// Binary Search is far more efficient for larger data sets as it splits one large collection into two, generally cutting the amount of work in half (log(n) times)
func binarySearchForSearchValue(searchValue: Int, numbers: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = numbers.count - 1
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = numbers[middleIndex]
        
        print("middleValue \(middleValue), leftIndex \(leftIndex), rightIndex \(rightIndex), [\(numbers[leftIndex]), \(numbers[rightIndex])]")
        
        if middleValue == searchValue {
            return true
        }
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearchForSearchValue(searchValue: 17, numbers: numbers))

// Fun Algorithims #3: Factorials & Recursion

// Fun Algorithims #4: Most common name in array

// Fun Algorithims #5: Reverse every other word

// Fun Algorithims #6: Fibonacci Sequence

// Swift 3 Fun Algorithims: Wrapping an Array

// Swift 3 Fun Algorithims: Filter, Map, Reduce, Higher Order Functions

// Swift 3 Fun Algorithims: Recursive Search through Binary Tree

// Swift 3 Fun Algorithims: Abstract Syntax Tree 

// Interview Algortihim Challenge: Reverse Linked List

