//: Playground - noun: a place where people can play

import UIKit

class Vehicle{
    var tires = 7
    var make :String?
    var model :String?
    var currentSpeed :Double = 0
    
    init() {
        print("I'm a perant")
    }
    
    func drive(speedIncrease :Double){
        currentSpeed += speedIncrease * 2
    }
    func brake() {
    }
    
}

class Truck: Vehicle{
    override init() {
        super.init()
        print("I'm a child Truck")
        make = "Volvo"
        model = "1 Series"
    }
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 9
    }
}

class SportsCar : Vehicle{
    override init() {
        super.init()
        print("I'm a child Car")
        make = "BMW"
        model = "2 Series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 5
    }
}

let car = SportsCar()
car.drive(speedIncrease: 7)
print(car.currentSpeed)

let truck = Truck()
truck.drive(speedIncrease: 5)
print(truck.currentSpeed)
