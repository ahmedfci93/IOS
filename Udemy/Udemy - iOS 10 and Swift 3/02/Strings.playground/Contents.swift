//: Playground - noun: a place where people can play

import UIKit

var str: String = "Hello, playground"

var firstName = "ahmed"
var lastName = "Ibrahim"
var nickName = "ahmedfci"
var age = 20
var fullName = firstName + " " + lastName
var fullName2 = "\(firstName) \(lastName) is \(age)"
fullName.append(" III")
var bookTitle = "one piece"
bookTitle = bookTitle.capitalized
var message = "PLEASE, HELP ME!"
message = message.lowercased()
var sentance = "what the fetch?! heck that is crazy"
if sentance.contains("fetch")||sentance.contains("heck")
{
    sentance.replacingOccurrences(of: "fetch", with: "tuna")
    sentance.replacingOccurrences(of: "heck", with: "playa")
}
var x = "8"
var y = Int(x)
var z = 1999
var w = String(z)
