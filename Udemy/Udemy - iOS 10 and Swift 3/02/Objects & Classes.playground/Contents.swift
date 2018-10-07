//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Vehicle{
    var tires = 7
    var headLights = 2
    var headPowers = 468
    var model = ""
    
    func drive(){
    }
    func brake() {
    }
    
}
class NewVC : UIViewController{
    override func viewDidLoad() {
    }
}

let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"
ford.brake()

func someFunc(vehicle : Vehicle){
    vehicle.model = "Sentra"
}
print(ford.model)
someFunc(vehicle: ford)
print(ford.model)
