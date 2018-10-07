//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let allowedEntry = false

//allowedEntry = true
if allowedEntry != true{
    print("ACCESS DENIED")
}

if !allowedEntry{
    print("ACCESS DENIED 2")
}


let enteredDoorCode = true
let passedRetinaScan = false
let iAmAhmed = false
if passedRetinaScan && enteredDoorCode || iAmAhmed{
    print("welcome")
} else {
    print("ACCESS DENIED AGAIN")
}
