import UIKit

var str = "Hello, playground"

// Functions: a block of code that enables us to call it anywhere in our project or file

/*
 Vocabulary
 -function
 -arguments
 -parameters, internal, external
 -input
 -output
 -function definition - description of the funciton
 -calling a function or invoking function or executing a function
 */

//==============================================
//             Function Syntax
//==============================================

// function definition
func myFirstFunction() {
    print("Happy Wednesday 🐥") // no parameters
}

// call our myFirstFunction
myFirstFunction() // the function did not take any parameters

// create a function
func doubleNumber(number x:Int) -> Int {
    // number is an arguement label and the user will see it
    // x is an internal parameter name
    // Int is the datatype of the function's input
    // Int is also an output of this function
    // return type syntax is -> for some datatype
    // if you have parenthesis on your ints datatypes there are no effects, it still functions as without them 
    
    let result = x * 2
    return result // I've calculated the result and now I want to return the result
}
let resultOfCalculation = doubleNumber(number: 10) // the function calculates the new number
    // arguement is 10.
print(resultOfCalculation) // initialize it in order to have it printed out.

doubleNumber(number: 1) // this prints 2

// write a function that adds two to a number, then triples it.
// (n + 2) * 3
// Input: 10, Output: 36
func aName(number:Int) -> Int {
    return (number + 2) * 3
}
aName(number: 10)

// use a function in a for loop by calling it in the print statement
for index in 0..<4 {
    print(aName(number: index))
}

// write a function that adds an exclamation mark ! to a String
// input: Hello
// output: Hello!
func exclamationMark(str: String) -> String {
    return str + "!"
}
let name = "Finn"
print(exclamationMark(str: name)) // a constant can be added to a function


//==============================================
//       Optional Types on Functions
//==============================================

func githubProfile(age: Int?, employmentStatus: Bool?) -> Bool? { // -> Bool? this could have been an optional string or a literal bool then it could have save you from the if let
    // optional int datatype
    // you have a different type for the second argument
    // optional bool datatype
    
    var profileComplete: Bool?
    if let _ = age, let _ = employmentStatus {
        // use optional binding
        // if this is complete then it is set to true
        // both values must be valid in order to be true
        // unwrappedAge and unwrappedEmploymentStatus are underscores _
        // the print statement of profileComplete was here // print("You entered \(unwrappedAge) for your age and \(unwrappedEmploymentStatus) for your employment status.")
        profileComplete = true
    } else {
        // the print statement of profileComplete was here // print("Profile is incomplete.")
        profileComplete = false
    }
    // the string interpolation is all inside the block of code
    return profileComplete
    // profileComplete would be nil if you do not have an else statement, you only have true or nil
}

// you have to unwrap this because you have an optional boolean
if let profileComplete = githubProfile(age: 34, employmentStatus: true) { // you can use a variable name as an unwrapping name***
    print("Profile is Complete \(profileComplete).") // a string interpolation is being used after it has been declared above.
        // profileComplete would be either true or false
} else {
      print("Profile is Incomplete.")
}



