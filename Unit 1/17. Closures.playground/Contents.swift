 import UIKit

var str = "Hello, playground"

 // Closures: is a block of code that can be called in our program similar to a function. In fact a closure is a type of function. We will see and recognize differences as we journey through this course (a type of function).
 
 //==============================================
 //        Function and Terminator Review
 //==============================================

 // returns void
 func printGreeting1() -> Void {
    // Void is not returning a value so you do not technically need it
    // did not take arguements
    // function can return void
    print("Good Morning")
 }

 //call function
 printGreeting1() // executes function
 
 
 
 func printGreeting2(_ name: String, _ age: Int){
    // ignore the external name with an underscore
    print("\(name), have a good studying session. You are \(age) years young.")
    // string interpolation using the internal name
 }
 printGreeting2("Stephanie", 23)
 // you get an error if you did not enter a value without the default value
 
 // default parameter value is 35 for age
 // this function has a string and an int
 func printGreeting3(_ name: String, _ age: Int = 35){
    // ignore the external name with an underscore
    print("\(name), have a good studying session. You are \(age) years young.")
    // string interpolation using the parameter name
 }
 printGreeting3("Marlene", 40) // if you did not put a value, then the default value is 35 in calling the function. However, use the value if it was entered.
 
 for _ in 0..<4{
    print("Good Morning Yall", terminator: "🥰 ")
    // this prints all in one line
 }
 print()
 
 //==============================================
 //               Closure Syntax
 //==============================================

 /*
 Closures:
 -can be passed as function parameters
 -can be assigned into a variable or constant
 -can be returned from a function
 */
 
 
 /*
 variable = {(parameters with datatype) -> (return datatype) in
    statements; return ?
 }
 */
 
 
 // example closure
 let greeting = {
    // () -> () valid void closure
    // greeting is a closure
    // does not have parameters,
    // if it does not have a return value, then it returns void
    print("🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️Welcome to Closures🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️🧚🏽‍♂️") // this is our statement
 }
 greeting()

 // closure that takes parameters and returns a value
 let square = { (num: Int) -> (Int) in
    return num * num
    // you cannot have a print statement in the closure
 }
 print(square(3))
 
 //shorthand syntax
 // refactoring square closure above to make use of shorthand syntax and shorthand argument names
 // $0 is the first parameter, here we only have one parameter, if you have e.g. two parameters it would be $0 followed by $1 and so no
 let squareShortHandSyntax: (Int) -> (Int) = {
    // type annotation
    // dont need to use in.
    $0 * $0 // the position of that int will be at [0].
 }
 print(squareShortHandSyntax(5))
 
 // subtract with two different ints.
 // two parameters with type annotation
 let squareShortHandSyntax2: (Int, Int) -> (Int) = {
    $0 - $1
 }
 print(squareShortHandSyntax2(6,5))
 
 //==============================================
 //        Closures as Function Parameters
 //==============================================
 
 /*
  closures are "first class citizens" meaning we can pass closures into a function as parameters similar as we do with variables in functions, we can also return a closure
  */
 
 // the name of the closure could be any name, here we are simply using the word "closure" but it could be an action, "myClosure"........
 func helloGreeting(closure: (String) -> ()) -> () {
    // doesnt return any parameters, void
    closure("Heather")
    print("Hello iOS")
    // value was captured by the closure
 }
 // call it then press 2 enters
 // calling a function that takes in a closure using trailing closure syntax
 helloGreeting { (name) in
    // capture the closure in name for heather
    // you do not need the parathensis after the helloGreeting
    print("Hello, \(name) it's Friday 👸🏽")
 }
 // I cannot do this with one enter.
 // helloGreeting(closure: <#T##(String) -> ()#>)
 
 // another example
 // void valid closure
 func printClosure(action: () -> ()) {
    action()
 }
 // defined a closure named printingAction
 // no parameter no return
 let printingAction = {
    print("inside printClosure trailing closure")
 }
 // called our printClosure
 printClosure (action: printingAction)
 
 //==============================================
 //      Higher Order Functions (Closures)
 //==============================================
 
 /*
-map{...} - transforms a value (4 * 4 = 16) and it returns an array of collection
-filter{...} - filters values based on a condition and returns an array of collection
-reduce(0, +) - takes an initial value (0 and a closure +) and combines all values and returns the result
-compactMap {...} - returns non-nil values
-sorted{ > } - you provide a sorting closure and it returns based on the string algorithm
-forEach{...} - similar to the for-in loop
  */
 
 // given an array of integers return an array where each value is squared
 // input: [1, 2, 3, 4, 5, 6]
 // output: [1, 4, 9, 16, 25, 36]
 // method 1
 let list1 =  [1, 2, 3, 4, 5, 6]
 func returnSquares(arr: [Int]) -> [Int] {
    var squares = [Int]()
    for num in arr {
        squares.append(num * num)
    }
    return squares
 }
 print(returnSquares(arr: list1))
 
 // method 2
 // using map
 // press enter twice
 let usingMapResults = list1.map {
    $0 * $0 // map takes one element
 }
 print(usingMapResults)
 
 
 let usingMapResults1 = list1.map {x in x < 1}
 print(usingMapResults)
 
 //==============================================
 //                Using Filter
 //==============================================
 
 // given an array of fellows return only fellows where thier names begin with "a" case-insentive
 // input = ["George", "Tom", "Ahad", "James", "Ameni"]
 // output = ["Ahad", "Ameni"]
 let list2 = ["George", "Tom", "Ahad", "James", "Ameni"]
 let filteredResults = list2.filter{$0.lowercased().hasPrefix("a")}
 // curly brackets
 // you can have properties inside your filter
 print(filteredResults)
 
 //==============================================
 //               Using Reduce
 //==============================================
 
 // given an array of integers return the sum
 // input: [10, -10, 50, 20]
 // output: 70
 let list3 = [10, -10, 50, 20]
 let reducedResults = list3.reduce(0, +) // inital value which is recommended at 0 and add sign for the sum otherwise you would have the sum plus whatever number you initialized it.
 print(reducedResults)

 //==============================================
 //              Using compactMap
 //==============================================

 // given an array of integers return return ONLY valid integers
 // input: [nil, 56, 12, -89, nil, nil, 0, 6]
 // output: [56, 12, -89, 0, 6]
 let list4 = [nil, 56, 12, -89, nil, nil, 0, 6]
 let compactResults = list4.compactMap{$0}
 // this gets rid of the nils
 // curly brackets
 print(compactResults)
 
// shorthand arguement names, trailing closure syntax, operator method
var names = ["John", "Stephanie", "Paul", "Ameni"]
 
let reversedNames1 = names.sorted(by: { $0 > $1 } ) // shorthand argument name
 
let reversedNames2 = names.sorted(by: >) // operator method
print(reversedNames2)
 
let reversedNames3 = names.sorted { $0 > $1 } // trailing closure syntax
print(reversedNames3)
 
