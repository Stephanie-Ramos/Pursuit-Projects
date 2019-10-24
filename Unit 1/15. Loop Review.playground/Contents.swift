import UIKit

var str = "Hello, playground"

// Questions Review: Sets

// Questions Two
// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.
// It should be in the same order as the original.
let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()



var visitedScores: Set<Int> = [] // enter all the elements
var uniqueScores: Set<Int> = [] // enter all the elements

// ONE way
for score in scores {
    if !visitedScores.contains(score) { // ! if I haven't visited
        visitedScores.insert(score)
        uniqueScores.insert(score)
        // scoresThatAppearOnce.append(score)
    } else { // visited this value before, so it's not unique
        uniqueScores.remove(score)
        // scoresThatAppearOnce.append(score)
    }
}
scoresThatAppearOnce = uniqueScores.sorted() // this indirectly adds the elements to the variable

// SECOND way 
for (_, score) in scores.enumerated() { // enums the index // we never used index so it automatically turned to an _ underscore
    if !visitedScores.contains(score) { // ! if I haven't visited
        visitedScores.insert(score)
        scoresThatAppearOnce.append(score)
    } else { // visited this value before, so it's not unique
        if let foundIndex = // optional binding because I am not sure if that thing exist in the array
            scoresThatAppearOnce.firstIndex(of: score) {
            scoresThatAppearOnce.remove(at: foundIndex) // if it does then remove that thing that exists
            // foundIndex has turned scoresThatAppearOnce[score] valid value
        }
    }
}
// runtime efficiency of the algroithm
// contains on a set in constant time 0(1)
// contains on an array is linear time 0(n)
//assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")







// Question Five
// Determine if a String is a pangram. A pangram is a string that contains every letter of
// the alphabet at least once.
// e.g "The quick brown fox jumps over the lazy dog" is a pangram
// e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram
let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

let alphabets: Set<Character> = Set("abcdefghiklmnopqrstuvwxyz") // covert this with Set().

var trimmedStr = ""
for char in strOne.lowercased() { // to make everything in lowercased
    if alphabets.contains(char) {
        trimmedStr += String(char) // only appends if it is a current character
    }
}
print(trimmedStr)

strOneIsPangram = Set(trimmedStr) == alphabets

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")


//assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
//assert(strThreeIsPangram == true, "Was expecting true, but got \(strThreeIsPangram)")
