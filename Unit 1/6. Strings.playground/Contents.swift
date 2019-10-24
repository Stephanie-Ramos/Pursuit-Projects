import UIKit

var str = "Hello, playground"


// Strings - a collection of unicode compliant characters

/*
Vocabulary
 -Unicode
 -Character
 -Literal String e.g. "Hello"
 */


// declaring and initialzing a literal string
var message = "Good Morning iOS 6.3"

// iterate for loops over a string using a for-in loop
for char in message { // in the print function  _ -is for string; char -is for character. cannot replace _ for printing characters
    print("characters is \(char)")
}

// iterate through a string 
var nextMovie = "Toy Story"
for s in nextMovie.unicodeScalars {
  print("Scalar: \(s) (\(s.value))")
}

// length of string using the count property
print("Message count is \(message.count)")

//==============================================
//                 Unicode
//==============================================

// a character has a one or more unicode scalars
// e.g. a space in unicode U+0020

var name = "Alex" // \u{"number"} - representation of a unicode character
name = "Al\u{0065}x" // the represent of the lowercase character e
name = "Ale\u{301}x" // enter this after the letter e to demonstrate the accent

let unicodeLowercaseE = "\u{0065}" // this is an "e" unicode character
let eCharacter = "e"
if unicodeLowercaseE == eCharacter {
    print("They are equal")
}

// accessing and modifying string
let fellows = ["Bat", "Ben"]
fellows.count // prints the value 2
let firstFellow = fellows[0] // this access the first value in the array

let numberArray = [0, 1, 2]
let aNumberArray = numberArray[1] // this is also the same for numbers

let nameAndBirthYear: (String, Int) = ("" , 20) // this is a tuple
if 20 <= nameAndBirthYear.1 {  // you can use the dot syntax
 print("You are in your twenties")
}

// accessing the first character in "Swift" => "S" is a two step
let programmingLanguage = "Swift!" // programmingLanguage[0] - does not complie
let firstIndex =
    programmingLanguage.startIndex // firstIndex is of type String.Index, not an Int and it tells you the position to get the string

// only way to subscript into a string is using a string.index value
let firstCharacter = programmingLanguage[firstIndex]
print("First character in \(programmingLanguage) is \(firstCharacter).")

let endIndex = programmingLanguage.endIndex // .endIndex does not function like the start.index property. The end.Index ends after the quotation marks
// let lastCharacter = programmingLanguage[endIndex] // cannot access the last character in the index
let lastCharacterIndex = programmingLanguage.index(before: endIndex) // access the last character of the string.
let lastCharacter = programmingLanguage[lastCharacterIndex] // cannot access the last character in the index
print("last character in \(programmingLanguage) is", lastCharacter)


//==============================================
//         Making Range using Indices
//==============================================

// using a for loop to print out the first six characters in the alphabet
let alphabets = "abcdefghijklmnopqrstuvwxyz"

// using a for loop to print out the first 6 characters in the alphabet
var counter = 0
for char in alphabets { // 0, 1, 2, 3, 4, 5   you can also for character in alphabets 
    if counter < 6 {
        print(char) // prints a, b, c, d, e, f
        counter += 1 
    } else {
        break
    }
}
print("for loop has ended")

// using a for-loop and enumerated print the first six alphabets
for (index, alphabet) in alphabets.enumerated(){ // enums each character in the string
// let alphabetsStartIndex = alphabets.startIndex
    if index < 6 { // a, b, c, d, e, f
        print("\(alphabet) at index \(index)")
    } else {
        break
    }
    print("Going through alphabets")
}

//==============================================
//            Multi-Line Strings
//==============================================

var multilineString = """
hello
bye
"""
print(multilineString)

// the \ brings the it all together in one line 
var anotherMultilineString = """
hello \
bye
"""
print(anotherMultilineString)


