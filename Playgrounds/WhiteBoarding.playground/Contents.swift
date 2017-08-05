//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func allPossibleCombinations(n: Int, k: Int) -> [Int] {
    
    var allCombinations: [Int] = []
    
    for i in 1...n {
        if allCombinations.count < k {
            allCombinations.append(i)
            print(allCombinations)
            

        }

}
     return allCombinations
}

allPossibleCombinations(4, k: 2)

