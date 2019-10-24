import UIKit

var str = "Hello, playground"

//==============================================
//               Questions
//==============================================

// Question Four Clousure Lab
// Write a function called sortedNamesByLastName(in:) that takes in an array of tuples
// of type (String, String) and returns an array of tuples sorted by last name.
// Input: unsorted last name array of tuples
// Output: sorted by last name array of tuples
func sortedNamesByLastName(in names:[(String, String)]) -> [(String, String)] { // [()] array of tuples
    
    let result = names.sorted {names1, names2 in
    names1.1 < names2.1
    // < means asceneding, or a..z
}
    return result
}
 let firstAndLastTuples = [
     ("Johann S.", "Bach"),
     ("Claudio", "Monteverdi"),
     ("Duke", "Ellington"),
     ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov"),
     ("Scott","Joplin"),
     ("Josquin","Des Prez")
 ]
 let expectedOutputFour = [
     ("Johann S.", "Bach"),
     ("Josquin","Des Prez"),
     ("Duke", "Ellington"),
     ("Scott","Joplin"),
     ("Claudio", "Monteverdi"),
     ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov")
 ]

print(sortedNamesByLastName(in: firstAndLastTuples))

let outputFour = sortedNamesByLastName(in: firstAndLastTuples)
assert(outputFour.elementsEqual(expectedOutputFour, by: { $0 == $1 }), "Expected output to be \(expectedOutputFour), but found \(outputFour)")


// Other Question
var arr = [4, 5, 1, -7, -99]
// return an array where elements are less than 5
// function
func elementsAreLessThan5 (in numbers: [Int]) -> [Int] {
    var arrayEmpty = [Int]()
    for num in numbers {
        if num < 5 {
            arrayEmpty.append(num)
        }
       
    }
     return arrayEmpty
}
print(elementsAreLessThan5(in: [4, 5, 1, -7, -99]))

// closure
print(arr.filter{$0 < 5}.sorted()) // use a variable instead of a constant in a filter

// sorted using closure by descending
let namez = ["Tiffany", "Stephanie", "Melanie"]
let sortedNamesUsingClosure = namez.sorted {$0 > $1}


// Other Question
// Given an array of names return all the names uppercased, use map or filter or reduce to solve this
// Input: ["Alex", "Ahad", "Stephanie", "Melinda", "Tiffany"]
// Ouput: ["ALEX", "AHA", "STEPHANIE", "MELINDA", "TIFFANY"]
let arrayNames = ["Alex", "Ahad", "Stephanie", "Melinda", "Tiffany"]
let capitalizedArrayNames = arrayNames.map {$0.uppercased()} //transforms it
print(capitalizedArrayNames)

// re-creating the built-in map function, custom map
// map function will take 2 parameters,
// first parameter is an array of ints
// second parameter is a closure
func customMap(array: [Int], closure: (Int) -> Int) -> [Int] { // () lets the compiler know this is a closure
    var transformArray = [Int]()
    
    for num in array {
        transformArray.append(closure(num))
        // perform transformation based on closure and append result in transformArray
    }
    return transformArray
}

// using custom map function above take in an array of numbers and return the squared values of each of those elements
// Input: [1, 2, 3, 4, 5, 6, 7]
// Output: [1, 4, 9, 16, 25, 36, 49]
let numberArray = [1, 2, 3, 4, 5, 6, 7]
let squaredNumberArray = numberArray.map {$0 * $0}
print(squaredNumberArray)
 
let customSquaredNumberArray = customMap(array: numberArray) {$0 * $0} // OR {number in number * number} // number is arbitary.
print(customSquaredNumberArray)



