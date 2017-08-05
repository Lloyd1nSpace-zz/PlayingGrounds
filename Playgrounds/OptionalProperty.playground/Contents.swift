//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

class Student {
    
    // Value must be assigned during initialization
    let username: String
    
    // Optionals
    var firstName: String?
    var lastName: String?
    var email: String?
    var phone: String?
    
    // Declared with a value
    var gpa: Double = 0.0
    
    // Designated initializer with optionals
    init(username: String, firstName: String?, lastName: String?) {
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
    }
    
    convenience init(username: String) {
        self.init(username: username, firstName: nil, lastName: nil)
    }
    
}

let joe = Student(username: "joelovescode")

print("username: \(joe.username)")
print("firstName: \(joe.firstName)")
print("lastName: \(joe.lastName)")
print("email: \(joe.email)")
print("phone: \(joe.phone)")
print("GPA: \(joe.gpa)")

// Unwrapped optional properties
if
    let firstName = joe.firstName,
    let lastName = joe.lastName,
    let email = joe.email,
    let phone = joe.phone {
    
    print("firstName: \(firstName)")
    print("lastName: \(lastName)")
    print("email: \(email)")
    print("phone: \(phone)\n")
    
}

