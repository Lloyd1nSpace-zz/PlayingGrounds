//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"
//make the first letter of each word capitalized and add-on an ! At the end of each word. Using Map

func capExclamation(words: [String]) -> [String] {
    var copy = [String]()
    for word in words {
        var mute = word
        mute = mute.capitalized
        mute += "!"
        copy.append(mute)
    }
    return copy
}

//    words.map { (word) -> [String] in
//        var mute = word
//        mute = mute.capitalized
//        mute += "!"
//        return [mute]
//    }
//

let words = ["Lloyd", "Zeppelin", "Lulu"]

capExclamation(words: words)
//capExclamation(words: words)
