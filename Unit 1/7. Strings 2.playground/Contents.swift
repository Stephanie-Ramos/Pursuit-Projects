import UIKit

var str = "Hello, playground"

//==============================================
//              Questions
//==============================================

// Given in a string switch on it and print all the characters if it is even or print every other character if it is odd
let message = "Good Afternoon!"
print("There are \(message.count) characters in message")

if message.count % 2 == 0 {
    print("string is even")
} else {
    print("string is odd")
}

// solution for question above:
switch message {
case message where message.count % 2 == 0:
    for char in message {
        print(char, terminator: "") // it prints out every character because it is even number.
    }
default:
    for (index, char) in message.enumerated() where // exposes the current index
        index % 2 == 1 {// gives you the indexes
        print(char, terminator: " ")
    }
}
print()

//==============================================
//              Escape Characters
//==============================================

// "\n" is the endline escape character
// "\t" tab
// "\"" quote "


// Newline Example
let message1 = "Hello\niOS 6.3\nGreate\nto have you!"
print(message1)

// Tab Example
let tabMessage = "\tProgramming is fun"
print(tabMessage)

// Quote Example
let quote = "In \"2014\" Swift was introduced"
print(quote)

//==============================================
//     Using String Initalization Methods
//==============================================

// declaring a character
let char: Character = "a"

// initailizing a String from a Character
let aString = String(char)
print(type(of:char))
print(type(of:str))

// initialize a string from an Integer (Int)
let currentYear = String(2019)
print("Year is \(currentYear)")

// inferring a float to a double
let float: Float = 23.35
let double: Double = 45.12
let result = Double(float) + double
print(result)

//==============================================
// String Format e.g. formatting decimal places
//==============================================

print("the result of the calculation above is",
      String(format: "% .2f", result)) // without the .2 it rounds to the nearest integer

//==============================================
//        Creating a Range on a String
//==============================================

let messageToSelf = "message to self is empty"

// getting the first position of messageToSelf
let startIndex = messageToSelf.startIndex
print(startIndex)

// to print only the first 18 characters of the string
let offsetToSomeCharIndex = messageToSelf.index(startIndex, offsetBy: 18) //
print(offsetToSomeCharIndex)
let range = startIndex...offsetToSomeCharIndex
print(range)

// Does not compile subscript[int] not allowed using an int only works on a [string.index] type
//let substring = messageToSelf[0]

let substring = messageToSelf[range]
print("Substribng is \(substring)")

//==============================================
//     Search for the Index of a Character
//==============================================

let swiftMessage = "I really love Swift"

let charIndex = swiftMessage.firstIndex(of: "🥰") ?? messageToSelf.startIndex
// after the of: you are trying to find the char
print(charIndex)

print("found \"\(swiftMessage[charIndex])\" in the swiftMessage String")

//==============================================
//             Prefix and Suffix
//==============================================

// hasPrefix
let name = "sammy"
if name.hasPrefix("s") { // hasPrefix() method return a Bool whether the prefix in the String was found
    print("Hi Sal!")
}

// hasSuffix
let message3 = "questions"
if message3.hasSuffix("ions") {
    print("We also have onions")
}

//contains
if message3.contains("q") { // runtime for contain is linear or big of n or 0(n)
    print("message2 contians q")
}

//==============================================
//          some Character properties
//==============================================

let character1:Character = "y"
if character1.isLetter {
    print("\(character1) is a letter")
}

// isCurrency e.g. $
// is Punctation e.g. ?
// isNumber: e.g. 4

//==============================================
//       NSString is an Objective-C API
//==============================================

// API: Application programming interface

// replacing occurrences
var coding = "coding"
coding = coding.replacingOccurrences(of: "g", with: "t")
// whenever you see "g" print with the unicode char
print(coding)

// the components within the variable will print out an array
let fullName = "Sammy Says Perhaps"
let separatedNames = fullName.components(separatedBy: " ")
print("There are \(separatedNames.count) items")
print(separatedNames)
