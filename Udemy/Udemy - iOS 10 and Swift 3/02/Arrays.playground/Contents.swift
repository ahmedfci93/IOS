//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var emplyeeSalary1: Double = 4500.0
var emplyeeSalary2 = 5600.0
var emplyeeSalary3 = 8000.0
var emplyeeSalary4 = 9100.0

var emplyeeSalaries = [ 4500.0,5600.0,8000.0,9100.0] as [Double]
var emplyeeSalaries1 : [Double] = [ 4500.0,5600.0,8000.0,9100.0] //common way
var emplyeeSalaries2: [Any] = [4500.0,5600.0,8000.0,"9100.0"]
var emplyeeSalaries3 : Array<Double>  = [ 4500.0,5600.0,8000.0,9100.0]
var emplyeeSalaries4 = [ 4500.0,5600.0,8000.0,9100.0]
print(emplyeeSalaries.count)

emplyeeSalaries.append(4478.99)

print(emplyeeSalaries.count)

emplyeeSalaries.remove(at: 2)

print(emplyeeSalaries.count)

var students = [String]() // declare an empty string ( array initialization )
var st = [Any]()
print(students.count)
students.append("ahmed")
students.append("belal")
students.append("badr")
students.append("hossam")

students.remove(at: 0)
print(students)
