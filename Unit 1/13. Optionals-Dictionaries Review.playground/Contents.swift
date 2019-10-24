import UIKit

// Questions Review: Optionals and Dictionaries
// Optionals
/*
Q 6
a. Given the variable numbers below, write code that prints "The sum of all the numbers is " followed by their sum. If a number is nil, don't add it to the sum. If all numbers are nil, the sum is zero.
 
var numbers = [Int?]()
for _ in 0..<10 {
    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
}
b. Using the same variable, find the average of all non-nil values.
*/

// a. Add only non-nil values
//var numbers = [Int?]() // this has 10 nums
//for _ in 0..<10 {
//    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
//}
//
//var sum = 0
//for num in numbers { // num is an optioanl int
//    sum += (num ?? 0) // this is because num is an optional nil, unwrapping
//    // without unwrapping then it will compile an error
//}
//print("The sum of all the numbers is \(sum)")
//
// b. Find the average of all non-nil values
// numbers / numbers.count
//sum = 0
//var nonNilCount = 0
//for num in numbers { // if a value is nil you would have to optional bind it.
//    // optional binding to unwrap num
//    if let unwrappedNum = num {
//        // increment nonNilValueCount by 1
//        nonNilCount += 1
//        sum += unwrappedNum // num does not compile
//    }
//}
//print("The average of the \(nonNilCount) non-nil values is \(sum / nonNilCount)")
//
// Dictionaries
// Q 4
// You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the highest score and print his full name.
var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"   // the scores are strings instead of ints
    ]
]
//
var highestScore = 0 // we will convert this
var fullName = ""
for currentPersonDictionary in peopleWithScores { // the for loop runs 5 times
    print("Currently look at \(currentPersonDictionary["firstName"] ?? "")")
    // keep of track of what student is compared to the highest score 
    let scoreAsString = currentPersonDictionary["score"] ?? "0"
    // scoreAsString is an optional string
    // personDict["score"] is accessing a value
    // nil coalescing
    let scoreAsInt = Int(scoreAsString) ?? 0 // scoreAsInt is also an optional string
    // inferring scoreAsString to an int
    // nil coalescing
    if scoreAsInt > highestScore {
        highestScore = scoreAsInt // this iterate through all the nums as labelled personDict
        let firstName = currentPersonDictionary["firstName"] ?? "No First Name"
        let lastName = currentPersonDictionary["lastName"] ?? "No Last Name"
        fullName = firstName + " " + lastName

}
      print("\n")
}
print("\(fullName) has the highest score of \(highestScore)")
func whatIfs4(array: [Int?], int: Int?) -> Int {
    
    var sum = 0
    
    for num in array {
        if let unwrappedNum = num {
            if unwrappedNum != int {
                sum += unwrappedNum
            }
        }
    }
    return sum
}
