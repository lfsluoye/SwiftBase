//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Avatar {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class User: Avatar {
    var group: String
    init(name: String, group: String) {
        self.group = group
        super.init(name: name)
    }
}

class Warrior: User {
    var weapon: String
    
    init(name: String, group: String, weapon: String) {
        self.weapon = weapon
        super.init(name: name, group: group)
    }
}
