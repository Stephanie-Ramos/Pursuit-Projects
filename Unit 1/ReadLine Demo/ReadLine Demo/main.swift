//
//  main.swift
//  ReadLine Demo
//
//  Created by Stephanie Ramos on 9/27/19.
//  Copyright © 2019 Stephanie N. Ramos. All rights reserved.
//


// Use RedLine() gets input from the user

import Foundation

print("Enter how many days you will swim, bike, and run this week?")

var numberOfDays = Int(readLine() ?? "-1") ?? -1 // readLine() is a fuction
// readLine can be nil

/*
var numberOfDays = Int(readLine()!)! //
*/


print("You entered \(numberOfDays + 10).") //numberOfDays is a value


//
//Command + R -builds and checks for erros
//Command + B -builds and runs the application

let workoutCount = numberOfDays
print()



//repeat-while loop
repeat {
    if numberOfDays == 0 {
        break // exits the loop
    } else if numberOfDays == -1 {
        break
    }
    print("Enter the type of workout swim, bike, run: ")
    let workout = readLine()?.lowercased()
    print() // creates a new line
    
    switch workout {
    case "swim":
        print("swim \(Int.random(in: 1...100)) lengths of the pool")
    case "bike":
        print("bike \(Int.random(in: 1...100)) loops around Central Park")
    case "run":
        print("run \(Int.random(in: 1...100)) laps around the track")
    default:
        print("no such workout")
    }
    
    numberOfDays -= 1 // dcrementing e.g. 5 days down to 0
    print() // creates space between lines
} while numberOfDays > 0


switch workoutCount {
case -1:
    print("bad data was entered")
case 1..<5: //cannot have a space between the operator and int
    print("Good job this week")
case 5...:
    print("Your are a rockstar 💫")
default:
    print("Hope you will be back next week")
}

