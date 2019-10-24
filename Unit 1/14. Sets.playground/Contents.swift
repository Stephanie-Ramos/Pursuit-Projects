import UIKit

var str = "Hello, playground"

// Sets: an unordered collection whose elements are unique


//==============================================
//      Initializing and Populating a Set
//==============================================

// Protocols: Hashable, Sequence, Collection

var accountNumbers1: Set<Int> = [] // <> the datatype of elements in the set and uses type annotation
var accountNumbers2 = Set<Int>() // this is the same and uses set initialization
var accountNumbers3: Set = [4353,46756,87791] // uses literal collection,this also works
var mixedArr: [Any] = [34532, "Tiff", false] // this is a collection
for element in mixedArr {
    if let num = element as? Int { // optional type casting, side note: downcasting, forced downcasting is as!(all the elements must be true), only interested in elements that are ints.
        print("Num is \(num)")
    }
    if let str = element as? String {
        print("String is \(str)")
    }
    if let bool = element as? Bool {
        print("Bool is \(bool)")
    }
}

//==============================================
//      Accessing Values in a Set
//==============================================

// isEmpty
if accountNumbers1.isEmpty{
    print("Account Numbers is Empty")
}

// count
print("There are \(accountNumbers3.count) elements in accountNumbers3")

// converting an array to a set
// removes any duplicates from the array, since the elements in a set has to be unique
let colors = Set(["Blue", "White", "Red", "Yellow", "White"])
print(colors) // this is unordered

//==============================================
//  Using Contains to Find an Element in a Set
//==============================================

let fellows: Set = ["Christain", "Gregg", "Joshua", "Ameni"]
for fellow in fellows {
    print(fellow)
}
if fellows.contains("Christain") {
    print("Found Fellow")
}
// you cannot access it by fellows[0] and using bracket notation. But contains!
// the contains is used faster in a set than an array.

//==============================================
//        Performing Set Operations
//==============================================

// intersection - both arrays have the same values
let a: Set = [45, 67, 6, 78, 989, 34]
let b: Set = [64, 34, 5, 67, 236, 28]

let intersection = a.intersection(b).sorted()
print(intersection)

// symmeteric difference - removes all the same values and have all unique values
let symmetricDifference = a.symmetricDifference(b).sorted()
print(symmetricDifference)

// union - shows all the elements from both of the arrays
let union = a.union(b).sorted()
print(union)

// subtracting - removes all the values from a array that shows up in b array
let subtracting = a.subtracting(b).sorted()
print(subtracting)

// this is another way of doing things from the example above
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶" , "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals) // a small portion compared to set in farm animals
// true
farmAnimals.isSuperset(of: houseAnimals) // this is vise versa
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true
