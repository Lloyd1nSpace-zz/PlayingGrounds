//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

extension URL: ExpressibleByStringLiteral {
    public init(extendedGraphemeClusterLiteral: StaticString) {
        self.init(stringLiteral: extendedGraphemeClusterLiteral)
    }
    
    public init(unicodeScalerLiteral: StaticString) {
        self.init(stringLiteral: unicodeScalerLiteral)
    }
    
    public init(stringLiteral value: StaticString) {
        if let url = URL(string: "\(value)") {
            self = url
        }
    }
}

let url: URL = "https://www.google.com"
