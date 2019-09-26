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
fellowName = "34"

// Does not compile - cannot add different data types
// let newString = "34" + 12

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

// integer division truncates decimals (removes them)
let integerDivision = 16/3
print("Interger division is \(integerDivision).")

//==============================================
//                 Double
//==============================================

var balance = 100005.9

// re-assign balance a new value of 85000
balance = balance + 85000
print(balance)

// floating point division keeps decimals
// let floatingPointDivision: Double  = 16.0/3.0 (also valid to keep decimal points)
let floatingPointDivision = 16.0/3.0
print("Floating point division is \(floatingPointDivision).")

//==============================================
//                 Float
//==============================================

// Float holds 32-bit vs. 64-bit of a double (double holds more memory than a float)
let floatNum:Float = 67.187352930873
let doubleNum:Double = 67.187352930873
print("Float is \(floatNum) and double is \(doubleNum).")

// Does not compile - cannot add a float with a double
// let accountBalance = floatNum + doubleNum

// casting (converting) a float to a double
let accountBalance = Double(floatNum) + doubleNum
print("Account balance is now \(accountBalance).")

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pie = Double(three) + pointOneFourOneFiveNine
print(pie)

//==============================================
//           Short-hand Arithmetic
//==============================================

balance -= 180000
print(balance)

var salary = 20000
salary *= 2
// this line above is the same as (salary = salary * 2)
print(salary)

var marathonTime = 6 // 6 hours
marathonTime /= 2
print(marathonTime) // 3

var i = 0
i = 5
i += 3
i *= 2
i %= 3
i -= 3
print(i)

//==============================================
//          Division by 0
//==============================================

// 89/0 Does not compile


//==============================================
//    Boolean - Bool, Comparison Operators
//==============================================

var result = 70 < 100
print(result)

var otherResult = result && true
print(otherResult)


print(-5 > -2 && 3 >= -5)

let comboIT = !true
print(comboIT)

let numOne = 4.0
let numTwo = 4.0
let a = numOne == numTwo
print(a)

let lowercaseName = "alex"
let uppercaseName = "Alex"
let stringResult = lowercaseName == uppercaseName
print(stringResult)

// strings with a comparison operator
let alphabeticalOrder = "Kelyby" < "Lorraine"
print("alphabeticalOrder result is \(alphabeticalOrder).")

let d1 = 1.1
let d2 = 1.1

if d1 == d2 {
    print("d1 and d2 are equal")
}

print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 == 1.2 {
    print("Hello, out there.")
} else {
  print("d1 + 0.1 is not 1.2")
}


//==============================================
//                Constants
//==============================================

let pi = 3.14

/*let salary = 20000
salary *= 2
print(salary)
THIS DOES NOT COMPILE - let is immuatable - constant
 */


//==============================================
//   Modulo Operator or Remainder Operator
//==============================================
var modResult = 16 % 3
print(modResult)


var even = 12 % 6
print(even)




