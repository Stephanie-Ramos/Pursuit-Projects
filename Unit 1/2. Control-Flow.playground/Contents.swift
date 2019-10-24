import UIKit


// Control Flow


//==============================================
//             Block of Code
//==============================================

//{code in here}

//==============================================
//             If Statement
//==============================================

/*
 if(some condition is true?){
 print("execute this block of code")
 }
 */
var day = "Friday".lowercased()
if(day == "friday 🦉"){
    //should print "friday" emojis are not printed
}

/*
 Built-in functions we have seen so far include:
 print()
 lowercased()
 round.() - e.g. 1.345 = 1.35
 
 Unicode Characters:
 Control + Command + Spacebar
 Can print emojis
 */

//==============================================
//             If/ Else Statement
//==============================================

/*
 if(some condition is true?){
 print("execute this block of code")
 } else {
 print("another statement will be executed if the condition is false")
 }
 */

//==============================================
//         If/ Else If/ Else Statement 
//==============================================

var temperature: Double = 125 //doubles and floats can be negative

if temperature < 45 { //dont need parenthesis
    print("It's cold don't forget your gloves")
    if temperature == 0 { //nested if statements
        print("I'm dead")
    }
} else if temperature == 85 { //dont need parenthesis
    print("This is my kind of weather")
} else {
    print("The temperature for today is \(temperature) 🌞.")
}

//==============================================
//             Ternary Operator
//==============================================

/*
 (condition - means evaluates to true or false)
 (conditon) ? excute if true : execute false
 
 vs
 if(condition){
 print(code)
 } else {
 print(other code)
 
 SwiftUI tends to use a lot of tenary operators
 */

var age = 26
print(age > 20 ? "Ride 🏇🏿" : "Don't")

//==============================================
//             Switch Statements
//==============================================

var cohort = "swimming players".lowercased()

// to test several conditions
switch cohort {
case "iOS": //must continue with a string if you start with a string vise versa with a interger
    print("iOS is Awesome") //Objective-C and JavaScript requires a break;
case "Skill":
    print("A Line")
    fallthrough //continues to the next case after executing and it only allowed in switch statements 
case "swimming":
    print("bring your swimsuit")
default:
    print("Self-taught Programmer 👩🏽‍💻")
    print("👍🏽")
}

//==============================================
//                Ranges
//==============================================

let ageRequirement = 0...35 //closed range, includes all values (0 is the lowerbound and 35 is upperbound)

let halfRangeExample = 18 ..< 35 // half open range, does not include 35

let decimalRange = -18.5...23.8

let characterRange = "A"..."Z"


//==============================================
//  Switch Statements on Ranges/ Switch Interval Matching 
//==============================================

let classNumber = -2.3 // 2.3 from Coaition for Queens (CQ4) prior to changing to Pursuit

switch classNumber { // can switch on Bool (another switch statement), Int, Double, Character (another switch statement), String (another switch statement) and values can switch to all data types
case 0 ..< 2: // does includes 0 and 1 NOT 2
    print("N")
case 2..<3:
    print("Next")
default:
    print("Y")
}

//==============================================
//                   Tuples
//==============================================

let coordinate = (40.789, 20) // can mix and match data types
coordinate.0 // JavaScript has the bracket notation: coodinate[0]
coordinate.1

let socials = (twitter: "@idk", instagram: "@idk")
socials.twitter // the value is @idk


//==============================================
//       Switch Statement on Tuples
//==============================================

let kim = (age: 19, cohort: 6.0, passion: "music")
let tim = (age: 29, cohort: 4.4, passion: "immigration rights")
let tom = (age: 48, cohort: 3.1, passion: "animal rights")


let currentFellow = tom

switch currentFellow {
case (18..<21,_,_): // data types must follow
    print("not allowed to drink")
case (_,_,"Cali"):
    print("pencils")
case (_,3.3,_):
    print("teeth")
default:
    print("perhaps")
}






