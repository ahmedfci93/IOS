//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var x: Int?

//print(x!)
if x != nil{
    print(x!)
}
x=100

if let y = x{
    print(y)
}

class Car {
    var model: String?
}
var vehicle: Car?

if let v = vehicle {
    if let m = v.model{
        print(m)
    }
}

vehicle = Car()

print(vehicle?.model)

vehicle!.model = "BMW"

if let v = vehicle, let m = v.model{
    print(m)
}


var cars : [Car]?

cars = [Car]()

if let c = cars , c.count > 0 {
    //do nothing
} else {
    cars?.append(Car())
    print(cars?.count)
}


class Person {
    private var _age : Int!
    
    var age : Int {
        if _age == nil  {
            _age = 15
        }
        return _age
    }
    
    func setAge(newAge :Int){
        self._age = newAge
    }
}
var ahmed = Person()

print(ahmed.age)

// we don't have to use optional inside constructor
class Dog {
    var species: String
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var d : Dog
d = Dog(someSpecies: "Huskey")
print(d.species)

class test {
    var x: Int
    init() {
        self.x = 10
    }
}
var t = test()
print(t.x)





