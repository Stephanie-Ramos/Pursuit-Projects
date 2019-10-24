import UIKit

var str = "Hello, playground"


// Loops Part 2

for _ in 1...5 {
    print(str) // use string
}
// using the str variable print "Hello, playground" five times using a for-in loop

//==============================================
//              Repeat-While Loop
//==============================================
// In JavaScript, this the do while loop

var seconds = 30
while seconds >= 0 {
    print(seconds)
    seconds -= 1
}

var isPlaying = false
var currentLevel = 1
let finalLevel = 10 // this remains constant

// you cannot change the value of a constant. but you can initialize it inside the statements.
repeat {
    // enter code here
    if isPlaying {
        print("Playing Level \(currentLevel)") // using string interpolation to show current level
        if currentLevel == finalLevel {
            print("I will definetely recommend this game.")
            isPlaying = false
        }
        currentLevel += 1 // if not, then reassign
    } else {
        print("Trying out Pursuit Arcade for the first time.")
        isPlaying = true // Key: in a macOS command, you prompt the user to to continue or not
    }
} while isPlaying == true // you can have another comparsion operator


//==============================================
//                Nested Loops
//==============================================

for i in 1...5 {
    // first time it enters the for loop i is 1
    for j in 1...5 {
        print("\(i) * \(j) is \(i * j)") // 1 * 1 = 1; and so forth
    }
} // try to keep a subnested loop as one statement


//==============================================
//               Labels in Loop
//==============================================

let product = 50

outerloop: for i in 1...10 { // this will stop at 5 when the ints are multiplied
    innerloop: for j in 1...10 {
        if i * j == product {
            print("Product was found by multiplying \(i) * \(j)") // this goes through all number until it reaches 10 and then it breaks to the outerloop
            break outerloop
        } else {
            print("Keep searching...")
        }
    }
    innerloop2: for _ in 1...5 {
        print("Hello Earth")
    }
    print("done running outerloop") // this prints when you have break the innerloop to the outerloop
}
