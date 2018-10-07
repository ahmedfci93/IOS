//: Playground - noun: a place where people can play

import UIKit

class Shape {
    var area : Double
    init() {
        area = 0
    }
    func calculateArea(valA: Double, valB: Double) {
    }
}

class Triangle : Shape{
    override func calculateArea(valA: Double, valB: Double) {
        self.area = (valA * valB)/2
    }
}

class Rectanlge : Shape{
    override func calculateArea(valA: Double, valB: Double) {
        self.area = valA * valB
    }
}

var shape = Shape()
print(shape.area)

var triangle = Triangle()
triangle.calculateArea(valA: 5, valB: 8)
print(triangle.area)

var rectangle = Rectanlge()
rectangle.calculateArea(valA: 12, valB: 10)
print(rectangle.area)

shape = triangle
print(shape.area)

shape = rectangle
print(shape.area)
