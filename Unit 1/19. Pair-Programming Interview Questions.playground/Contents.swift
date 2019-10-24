import UIKit

var str = "Hello, playground"

//10: Introduction to Problem Solving
//We now have seen most of the core types in Swift. As we start to approach problems now, we will almost always ask you to write functions. Here are some key steps to follow as you approach writing functions to solve problems:
//Clarify the Problem
//Identify Inputs and Outputs
//Diagram the Problem
//Explain a possible solution in words and images
//Code A Solution
//Test and Refactor the Solution


//Practice Problem One
//Write a function that returns how many vowels are in a String
//Sample Input: "Hello there! How's it going?"
//Sample Output: 8
func countVowels (in array: String) -> Int {
    
    let vowels = ["a", "i", "e", "o", "u"]
    var counter = 0
    
    for character in vowels {
        for element in array {
            if element == Character(character) { // type casting
                counter += 1
            }
    }
}
   return counter // should count the number of vowels in the array
}
let countResults = countVowels(in: "Hello there! How's it going?")
print(countResults)


//Practice Problem Two
//Write a function that returns the product of an array of Ints with any zeros taken out
//Sample Input: [4,0,8,3,0]
//Sample Output: 96
func productNoZeros (in arr: [Int]) -> Int {
    var product = 1
    for num in arr {
        if num != 0 {
            product *= num
        }
    }
    return product
}
let intArray =  [4,0,8,3,0]
productNoZeros(in: intArray)


//Practice Problem Three
//All Ints appear twice in an array, but one element appears only once. Find the outlier.
//Sample Input: [4,0,7,8,3,0,4,3,8]
//Sample Output: 7
// MY response 
//func elementAppearsOnlyOnce(in array: Array<Int>) -> Int {
//    var int = [Int]()
//    for element in array {
//        if let count = int[element] {
//            int[element] = count + 1
//
//
//        } else {
//            int[element] = 1
//        }
//        if int[element] == 1 {
//            return int[element]
//        }
//
//    }
//}
//let elementArrayResults = elementAppearsOnlyOnce(in: [4,0,7,8,3,0,4,3,8])
//print(elementArrayResults)
//
// OTHER response
//func elementAppearsOnlyOnce(in array: [Int]) -> Int {
//var counter = 0
//var singleAppearance = 0
//let setArray = Set(array)
//   print(setArray)
//   print(array)
//   for num in setArray {
//       for element in array {
//           if num == element {
//               counter += 1
//           }
//       }
//       if counter == 1 {
//           singleAppearance = num
//       }
//   }
//return singleAppearance
//}
//let elementArrayResults = elementAppearsOnlyOnce(in: [4,0,7,8,3,0,4,3,8])
//print(elementArrayResults)


//Practice Problem Four
//Write a function that capitalizes the first letter of each word in a string
// OTHER response
//func capitializeFirstLetterOfEachWordInAString(in str: String) -> String {
//    var newString = ""
//
//    for (index, char) in str.enumerated() {
//        //if index == 0 {
//
//        if char == " " {
//            newString.append(str[index + 1].uppercased())
//        } else {
//            newString.append(char)
//        }
//    }
//    return newString
//}
// MY response
//func capitalizeFirstLetterOfEachWordInAString(in string: String) -> String {
//
//    var capitalizedWords = ""
//
//    for element in string.indices {
//        if element == " " {
//        capitalizedWords.append(string[element + 1].uppercased())
//    }
//}
//    return capitalizedWords
//}
//
func capitialize(in str: String) -> String {
    
    var strArray = str.components(separatedBy: " ") // separates the string into char
    
    for (index, word) in strArray.enumerated() {
        strArray[index] = word.capitalized
    }
    
    return strArray.joined(separator:" ") // turns the char back into a string
}
print(capitialize(in: "hello, playground"))





//Practice Problem Five
//Write a function that returns whether an Array of Ints contains any numbers divisible by 13
func anyNumbersDivisibleBy13(in array:Array<Int>) -> Bool {

    var condition = false

    for element in array {
        if element % 13 == 0 {
            condition = true
        }
    }
    return condition // it is outside the for-in loop
}
let numberDivisibleBy13Results = anyNumbersDivisibleBy13(in: [4, 13, 1, 5, 7, 8])
print(numberDivisibleBy13Results)


//Practice Problem Six
//Write a function that reverses a String without using built-in reverse methods (i.e don't write ~.reversed()")


//Practice Problem Seven
//Write a function that "safely" accesses a value in an array of Ints at a given index.
//func safely( Array<Int>) -> Int {
//}


//Practice Problem Eight
//Given a Dictionary as input that maps Strings to Ints, return a Dictionary that gets rid of entries that map to a negative value.





// More Questions:

//Write a function that finds (meaning outputs) the mode of an Array of Ints.

//Write a function that converts seconds to hours.

//Write a function that finds the longest word in a list of words.

//Write a function that finds the average of an Array of Ints.
