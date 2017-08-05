//: Playground - noun: a place where people can play

import UIKit

var question = false
let answer1 = ""
let answer2 = ""
var finalAnswer = ""

if question {
    finalAnswer = answer1
} else {
    finalAnswer = answer2
}

finalAnswer = question ? answer1 : answer2

func capitalizedCheck(_ word: String) -> Bool {
    
    for letter in word.characters {
        if String(letter) == String(letter).uppercased() {
            return true
        }
        return false
    }
    return false
}

let lowercasedName = "lloyd"
var name: String?

if capitalizedCheck(lowercasedName) {
    name = lowercasedName
} else {
    name = lowercasedName.capitalized
}

name = capitalizedCheck(lowercasedName) ? lowercasedName : lowercasedName.capitalized
