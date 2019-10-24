import UIKit



var str = "Hello, playground"
print(str)
print(str)
print(str)
print(str)
print(str) // this is error prone

//==============================================
//    Ranges - Closed Range and Half Range
//==============================================

let closedRange = 1...10 //this is inclusive
let halfRange = 1..<10 // this is exclusive

//==============================================
//                For in Loop
//==============================================

for num in 1...10 {// the for in loop the variable infers the sequence. Inclusively, this means to prints 1 to 10. you do not need to declare nor initialize the num.
    // print() default terminator is "\n" -a new line character
    print(num, terminator: " 💫") // this prints the results all in one line
}
print() // to break from printing my first value of my next block of code. This also works with print("")


for num in closedRange { // you can also call the constant
    print(num)
}

//==============================================
//       Preview using Loops with Arrays
//==============================================

let pursuitStacks = ["iOS", "web", "android"]
// arrays of type strings. compiles a runtime error when I have different datatypes in my array.

let pursuitStack: [String] = ["iOS", "web", "android"]
// you must have bracket notation on your type annotation in an array.

for pursuitClass in pursuitStacks { // after the for keyword, there is a numbner (syntax: the computer automatically knows it is a number), after the in keyword (a collection), enter the array.
    print("Pursuit class is \(pursuitClass)")  // the pursuitClass prints all the elements
}

let fellows: [String] = ["Tiffany", "Julia", "Josh", "Ameni"]

for fellow in fellows { // fellow is good syntax
    print("The fellow name is \(fellow)") // This prints all name.
}

for fellow in fellows { // fellow is good syntax
    if fellow == "Josh" { // comparing something
        print("Josh is a clean hippe too.") // to print something else only for josh
    } else {
        print("\(fellow) is clean hippe.")
    }
}

let temperatures = [69, 79, 87, 35, 61] // array of ints.
for temp in temperatures { // temp is an int.
    switch temp { // a switch statement (an alternative of if/else statement) inside a for in loop.
    case 79...:
        print("Catch me at central park")
    default:
        print("Just another day") // this prints all five results
    }
}

let message = "Monday Motivation"
for _ in 1..<5 { // the underscore character ignores the variable name.
    print(message) // this prints the message 4 times
}

for _ in 1..<5 { // the underscore character ignores the variable name.
    print(message.count) // this prints the total number of character in message 4 times
}

for _ in 0..<10 {
    print("Hello there!") // this print 10 times.
}

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)") // this prints the answer

//==============================================
//           Control Transfers
//==============================================

/*
 where
 break
 continue
 fallthrough, throw, return
 */

// where -a condition
// Question: use where to print only numbers ending in 5 inclusively
for number in 1...100 where number % 10 == 5 {
    print(number)
}

// break -exits the loop
for num in 1...50 {
    if num == 40 {
        print("Rooftop") // this is last result and exits the loop. you never get to 50.
        break // I do not need a semicolon after the break
    } else {
        print("Ground") // this print 30 times before the if condition is executed
    }
}

// continue - captures the value and continues to the next value in a sequence on a for in loop
for num in 1...10 {
    if num % 2 == 0{ // even numbers
        continue // continue to the next number in the loop, so it forgets even numbers. this increments in the sequence
    }
    print(num, terminator: "😒") // this prints odd numbers because it falls from the sequence
}

//==============================================
//               While Loop
//==============================================
var second = 30
while second >= 0 { // this runs infinite
    print("countdown \(second)") // this run down to 0
    second -= 1 // decrementing seconds by 1, if increments then it would still run infinite
}

var seconds = 30
while seconds >= 0{ // this runs infinite
    if seconds == 0 {
        print("🤪")
    } else {
        print("countdown \(seconds)...") // this run down to 0
    }
    seconds -= 1 // decrementing seconds by 1, if increments then it would still run infinite
}

