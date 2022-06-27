import UIKit
// Basic controll flow

// 1 task
var Counter = 0
while Counter < 10 {
    Counter = Counter + 1
}
print("Counter is \(Counter)")

//2 task
var roll = 0
var counter = 0
repeat {
 roll = Int.random(in: 0 ... 5 )
 counter += 1
} while roll != 0
print ("After  \(counter)  rolls, roll is \(roll) ")
