import UIKit


// Optionals: is a type that represents two possibilities, either we have a value or we do not have a value (nil).


// Swift data types support optionals, e.g.

/*
 String - this is a literal string
 */

//==============================================
//       Introduction of Optionals
//==============================================

var name:String = "Stephanie"
print(name)

var age: Int? =  21 // the question mark sets it as optional
print(age) // prints nil.

var num = Int("5") // using the int initializer to a string, the variable is automatically assigned to an optional int because its not certain it is definately a value. 5 could have been five.

//==============================================
//          Ways to Unwrap Optionals
//==============================================

/*
 1. Forced unwrapping using an exclamation mark !
     or some programming refer to it as banging !
 2. Nil-coalescing using two question marks ?? followed by a default value that we provide
 3. Optional-binding using if let, where a value is assigned the existing if one is available.
 4. Implicit unwrapping e.g. var name: String! (this will be discussed later in unit 2.)
 
 */

//==============================================
//            Forced Unwrapping
//==============================================

let decadeFromNow = age! + 10 // int optional and int
print(decadeFromNow) // you cannot add these datatypes
// however if you add ! after the age you can infer the optional nil to an optional.
// the application still crashes because you cannot force unwrap a nil.
// the application still crashes if your value is a string int "21"

//==============================================
//              Nil-Coalescing
//==============================================

var temp: Int? = 75 // degrees

let validTemperature = temp ?? 67 // the new variable unwraps temperature (75) with the nil-coalescing. 67 is the new temperature in case if temperature is nil
print("Temperature is \(validTemperature)")

var cohort: Int?
var nextYearCohort = (cohort ?? 5) + 1 // you have to option to add the parathensis
print(nextYearCohort)

//==============================================
//     Optional Binding: if let, while let
//==============================================

var wage:Int? // dollars
var year:Int? // nil by default

if let validWage = wage, let validYear = year { // the wage and year must have to be a valid in order to it printed. this acts like an &&.
    // look at wage (int 40,000)and if let wage (optional) has a valid value and not a nil, then assign it to bindedValue constant int data type. This is also a condition
    print("You entered \(validWage) as your wage in the current year \(validYear)")
    // if wage has a value then if let is true, validWage is a constant
    // if wage is nil then if let is false
} else {
    print("You did not enter a valid value, \(String(describing: wage)) or values are unavailable")
    // because wage is an optional int it assigns it to a string describing to grab the value of wage
    // string interpolation cannot have an optional datatype
    // string describing silences the error
}

// this is another way of verifying only if wage is not a nil
if wage != nil {
    // 1. wage within the if is still optional
    // 2. not idiomatic swift (swifty)
}

// quite note
if 5 < 10 { // this is a condition
    
}

// string interpolation
var modelYear: Int? = 2016
print("Model year is \(modelYear ?? 1959)") // if you don't have an optional int valid value 

//==============================================
//      Testing Optional for Equality
//==============================================

var someValue: Int? = 7
if someValue == 7 {
    print("\(String(describing: someValue)) is equal to 7")
    // optional 7 would print in the console pane
    // you can also force unwrap in the string interpolation
}

//==============================================
//     Looping Through an Optional Array
//==============================================

var numbers:[Int?] // the ? inside the square brackets indicates it is an optional array of ints.
numbers = [4, 9, nil, 10, 20, nil]

// add only valid ints
var sumUnwrappedUsingOptionalBinding = 0
var sumUsingNilCoalescing = 0
for num in numbers {
    // num is an optional int
    
    // if you put the var sum = 0 inside the block then it creates an error because the varibale has already been declared in the for loop
    if let validNum = num { // validNum is an int. optional binding to unwrap the current num.
        sumUnwrappedUsingOptionalBinding += validNum
    }
    sumUsingNilCoalescing += num ?? 0 // this still prints all the ints
    // you would have to nil coalescene it
}
print("The sum of numbers is \(sumUnwrappedUsingOptionalBinding)")
print("The sum of numbers is \(sumUsingNilCoalescing)")

var isAbscent: Bool?
if let unwrappedValue = isAbscent {
    print(unwrappedValue)
} else {
    print("This does not have a value")
}


