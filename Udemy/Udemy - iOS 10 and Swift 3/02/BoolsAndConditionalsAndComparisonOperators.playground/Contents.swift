//: Playground - noun: a place where people can play

import UIKit

var amIGoodStudent: Bool = true

amIGoodStudent = false

if true == false || true == true{
    print("ahmed")
}

if 1 == 2 {
    print("ahmed")
}
var hasDataFinishedDownloading = false
if !hasDataFinishedDownloading {
    print("downloaded")
}

var bankBalance = 400
var itemToBuy = 400

if  bankBalance >= itemToBuy{
    print("purchased item")
}
if  bankBalance < itemToBuy{
    print("your balance less than the item price")
}
if  bankBalance == itemToBuy{
    print("your balance is Zero")
}
var bookTitle2 = "harry potter & the Moppet of mire"
var bookTitle1 = "harry"

if  bookTitle2 == bookTitle1 {
    print("need to fix spelling")
} else if bookTitle1.characters.count > 10 {
    print("charaters of book 1 larger than 10")
} else {
    print("least condition of books")
}
