//: Playground - noun: a place where people can play

import UIKit

var emplyeeSalaries: [Double] = [ 4500.0,5600.0,8000.0,9100.0]
emplyeeSalaries[0] = emplyeeSalaries[0] + emplyeeSalaries[0] * 0.10
emplyeeSalaries[1] = emplyeeSalaries[1] + emplyeeSalaries[1] * 0.10

var x = 0
repeat{
    x += 1
} while(x < emplyeeSalaries.count)

x=0
while x<=emplyeeSalaries.count {
    x += 1
}
x = 0
var ans: Double = 0
while x < emplyeeSalaries.count {
    ans += emplyeeSalaries[x] + emplyeeSalaries[x] * 0.10
    x += 1
}
print(ans)

for i in 0..<emplyeeSalaries.count {
    emplyeeSalaries[i] = emplyeeSalaries [i] + emplyeeSalaries [i] * 0.10
}

for z in 1...5 {
    print("index : \(z)")
}
for z in 1..<5 {
    print("index : \(z)")
}


let c = 1
func add(a:Int,to b:Int){
    
}

add(a: 5, to: 3)
