import UIKit

var str = "Hello, playground"

//==============================================
//                Questions
//==============================================

// Question 1
let str1 = "" // this is empty
if str1.isEmpty {
    print("str1 is empty")
} else {
    print("str1 is not empty")
}
print()

// Question 2
//to reverse a string
let message = "hello"
var reversedString = ""

for currentChar in message {
    print(currentChar, terminator: "")
    // we have to cast the char value because reverseString is a String and char is a character
    // we cant add a char to a string
    // we want to loop through the given message string and add the characters we visit in the reverse order to our reversedString variable
   reversedString = currentChar.description + reversedString
    // reversedString = String(currentChar) + reversedString; this is also an option
}
print(reversedString)
    //Algorithim:
    //(reversedString + currentChar)
    //1. "" + "h" => reversedString = "h"
    //2. "e" + "h" => reversedString = "eh"
    //3. "l" + "eh" => reversedString = "leh"
    //4. "l" + "leh" => reversedString = "oleh"
    //5. "o" + "lleh" => reversedString = "olleh"
print()

// Question 3 
let arr = ["aaaaaaa", "apes", "abba", "apple", "aaaaa"]
// how do we keep track of the String with the most "a" characters?
var overallCount = 0
var stringWithMostAs = ""
for str in arr {
    var LocalACount = 0
    // has local scope within the for in loop
    // scope entails a variable can only be accessed with its curly brackets boundaries {...}
    for char in str { //String.element is the same as character
        if char == "a" { //"apes"
            LocalACount += 1
        }
    }
    // here we will compare a's count
    if LocalACount > overallCount {
        overallCount = LocalACount //override overallCount
        stringWithMostAs = str
    }
}
print(stringWithMostAs)
print()
