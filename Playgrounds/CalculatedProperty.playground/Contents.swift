//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

class Circle {
    var diameter: Double = 1
    var circumference: Double { return diameter * M_PI }
    
    init(diameter: Double) {
        self.diameter = diameter
    }
}

let circle = Circle(diameter: 1.0)
let bigCircle = Circle(diameter: 2.0)

print(circle.circumference)
print(bigCircle.circumference)

class Student {
    let username: String
    var firstName: String
    var lastName: String
    var email: String = ""
    var phone: String = ""
    
    var fullName: String { return "\(firstName) \(lastName)" }
    
    init(username: String, firstName: String, lastName: String) {
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
    }
}

let susan = Student(username: "susanmarielovaglio", firstName: "Susan", lastName: "Lovaglio")

print(susan.fullName)

let susan = Student(username: "susanmarielovaglio", firstName: "Susan", lastName: "Lovaglio")

print(susan.fullName)

susan.firstName = "Siouxsie"
susan.lastName = "and the Banshees"

print(susan.fullName)