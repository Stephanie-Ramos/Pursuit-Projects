import UIKit

var str = "Hello, playground"

// Single-Line Comment
/*
 Multi-line Comment

 Swift was introducced in 2014.
 - swift is a type sage language meaning you can't mix a declared data type with another e.g ir var name = "Alex"
    you cannot update name = 10, won't complie type String is not an Int
 - modern language
 - provides optionals that allows us to know whether a vairable has a lalue or not
 */

// Data Types: String, Int (Integer)

//==============================================
//                String
//==============================================


// declared a variable fellowName of type String
// Type Inference: implicit declaration of a variable I
var fellowName = "David Lin"


// Type Annotation - explicity writing the data type using : (colon)
var cohort: String = "iOS 6.3"

//==============================================
//                Character
//==============================================

var alphabet: Character = "c"

// mutating cohort
// var is mutable - meaning can be changed
cohort = "iOS 7.3"



//==============================================
//                   Int
//==============================================

// declared variable age and initialized value to 32

var age = 32
var ageOfFellow = 32
var futureAge = ageOfFellow + 8
// String interpolation is embedding a variable into a String using \(variable name) syntax as seen below
print("Age of fellow 8 years from now is \(futureAge).")



//==============================================
//                 Double
//==============================================

var balance = 100005.9

// re-assign balance a new value of 85000
balance = balance + 85000

print(balance)


//==============================================
//            Short hand arithmetic
//==============================================

balance -= 180000

print(balance)


//==============================================
//         Boolean - Bool, Comparison Operators
//==============================================

var result = 70 < 100

print(result)

var otherResult = result && true

print(otherResult)


-5 > -2 && 3 >= -5

//==============================================
//          Arithmetic operators
//==============================================

//==============================================
// THIS DOES NOT COMPILE - let is immuatable - constant
//==============================================
//let salary = 20000
//salary *= 2
//print(salary)

var salary = 20000
salary *= 2
// this line above is the same as (salary = salary * 2)
print(salary)


var marathonTime = 6 // 6 hours
marathonTime /= 2
print(marathonTime) // 3


//==============================================
//   Modulo operator or Remainder operator
//==============================================
var modResult = 16 % 3
print(modResult)

var even = 12 % 6
print(even)


//==============================================
//                Constants
//==============================================

let pi = 3.14


//==============================================
//                Bonus
//==============================================

print(1 + 4 * 2 / 2 + 2)

let numOne = 4.0
let numTwo = 4.0
let a = numOne == numTwo

var i = 0
i = 5
i += 3
i *= 2
i %= 3
i -= 3

let comboIT = !true
print(comboIT)
false



let d1 = 1.1
let d2 = 1.1

if d1 == d2 {
    print("d1 and d2 are equal")
}

print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 == 1.2 {
    print("hello, out there.")
} else {
  print("d1 + 0.1 is not 1.2")
}


let three = 3
let pointOneFourOneFiveNine = 0.14159
let pie = Double(three) + pointOneFourOneFiveNine
print(pie)


