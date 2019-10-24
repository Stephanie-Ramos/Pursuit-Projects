import UIKit

// Questions Review

// Dictionary Question
// Given an array of ints, write a function that returns a dictionary of occurrences of each int.
// Input: [1, 3, 1, 1, 3, 4, 1, 8, 2, 7, 8]
// Output: [7: 1, 1: 4, 3: 2, 8: 2, 2: 1]
func occurrenceOfInteger(arr: [Int]) -> [Int:Int] { // dictionary of int, not Dictionary<Int>
    // arr: [Int] or _:Array<Int>
    
    var frequencyDict = [Int: Int]() // create a variable for a dictionary of int
    
    for num in arr {
        // first time visiting a number, we want to set the count of occurrences to 1
        // next time we visit a numnber that appears in our dictionary we want to increase it by 1
        // let testType = frequencyDict[1] // optonal integer, this is for test purposes
        if let countValue = frequencyDict[num] {
            // whatever num in frequencyDict
            // optional bind it to unwrap the value at the given key in our created frequencyDictionary
            // optional binding
            // accessing the key frequencyDictionary[num]

            frequencyDict[num] = countValue + 1
            // enter if let statement if we have seen the number before and increment count by 1
            // reassigning a value
        } else {
            frequencyDict[num] = 1 // e.g. 1: 1
            // reassign if the value is nil or has an empty string
            // appending an element in the dicitonary from 0 to 1.
            // happens here like this: [1: 1]
        }
    }
    return frequencyDict // the created dictionary of ints is returned
}
let results = occurrenceOfInteger(arr: [1, 3, 1, 1, 3, 4, 1, 8, 2, 7, 8]) // input
print(results)

// Closures Question
// Write a function called largestValue(in: ) that finds the largest int in an array of ints. Use reduce to solve this exercise.
func largestValue(in numbers: [Int]) -> Int {
    // var result = 0 // this would be visible when using the if let statement
    // using guard to ensure an array is not empty
    //guard numbers.count > 0 else {return - 1}
    
    // using guard to get the first element in the array and can use guard to guard multiple values
    guard let first = numbers.first else { return -1 } // like nil coalescing
    
    
  // if let first = numbers.first {
  //   print(first)// In a if let statement, you only have access to that code of block on the otherhand the guard let you have have access to anywhere else
  // } else {
       //first does not compile in the else statement in the if let statement
  // }
    
    // using trailing closure syntax to solve reduce exercise
    let result = numbers.reduce(first) { // reduce is a closure, without the guard let the reduce() has a 0 inside of it
        prevValue, currentValue in // this functions like it's looping
       if prevValue > currentValue { // we are not adding the numbers unlike the other reduce function // this is the same as the ternary operator
        // you can compare multiple values
            return prevValue
        } else {
            return currentValue
        }
    }
    return result
    // numbers.reduce(0, *)
    // numbers.reduce(0) {prevValue, currentValue in  }
    
}
let largestResult = largestValue(in: [56, 100, -56, 0, 208])
print(largestResult)




