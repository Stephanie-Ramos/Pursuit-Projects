import UIKit


//==============================================
//             Optional
//==============================================

/*
 
Optional - used to indicate if a number exist
two possible outcomes
outcome 1: there is a value and it can be used as normal
outcome 2: there isn't a value, in Swift terms, it's nill (null in SQL)

 String?
 Bool?
 Int?
 Character?
 Double?

 */


let response = "5"
var age = Int(response)! //! force wrapping -to unwrap a declared variable and take out the qoutation strings from a number
print(age + 10)


let response2 = "twenty seven"
var age2 = Int(response2) ?? 33 // nil-coelescing forgets the response2 value and use 21 instead
print(age2 + 10)

if let yourAge = Int(response2) {//optional-binding the response2 value is nil, this functions as the force wrapping. glues the value to the assignment.
    print("The age you entered is \(yourAge)")
} else {
    print("The response value is nil")
}

/*
ways to unwrap an optional:
forced wrapping e.g.Int(response)!
nil-coelescing e.g. Int(response) ?? 21
optional-binding e.g. if let bindingValue = optionalValue {..we can use binding value here..
 } else {...}
 implicit unwrapping e.g. var name:String!
*/

//==============================================
//
//==============================================
