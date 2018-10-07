//: Playground - noun: a place where people can play

import UIKit

var length = 10
var width = 5
var area = length * width

func calcArea(length : Int,width : Int) -> Int
{
    return length * width
}
var area2 = calcArea(length: length, width: 5)
var area3 = calcArea(length: length, width: 10)

var bankAccountBalance = 500.00
var item = 350.0

func purchaseItem(currentBalance: Double,itemPrice: Double) -> Double{
    if currentBalance >= itemPrice {
        print("Purchased item for: $\(itemPrice)")
        return currentBalance - itemPrice
    }
    print("you are broke. you should save money.")
    return currentBalance
}
var lunchBox = 40.00
bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: item)
bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: lunchBox)
