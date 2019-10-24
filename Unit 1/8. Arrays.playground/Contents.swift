import UIKit

var str = "Hello, playground"

/*
types: Bool, Int, String
let earth = planets[2]
let gasGiants = planets[4...6] // ArraySlice; this prints all of the arrays
 planets[2] += " (home)" // subscripting to modify an existing element
var anotherThreeDoubles = Array(repeating: 0.0, count: 3) //repeating objects
 // you can append an array with + and
 */

//==============================================
//          Initializing Arrays
//==============================================

// Arrays - an array is an ordered collection of items
// using Type Annotation we are declaring an array of type String
var bucketList: [String]
bucketList = ["France", "Austrailia", "South Africa", "Aruba"]
print(bucketList)
print()

//count the items in the array
print("There are \(bucketList.count) countries on my bucketList")
print()

var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)
print()

//==============================================
//      Accessing Values Inside an Array
//==============================================

// tuples
var juan = (name: "Juan", cohort:6.3, hobby: "gaming")
var shaniya = (name: "Shaniya", cohort: 6.3, hobby: "music yeah")
var fellows = [juan, shaniya]

// array of plants
var planets = ["Mars", "Venus", "Uranus", "Pluto"]
var dwarfPlanets = ["Pluto"]

// accessing "Earth" planet using subscripting[2]
let thirdRockFromTheSun = planets[2]
print(thirdRockFromTheSun)
print()

// var planets = ["Mars", "Venus", "Uranus", "Pluto"]
let lastPlanet = planets[planets.count - 1]
// planets[4 - 1] wouldn't work.
print("The last planet is our solar system is \(lastPlanet)")
print()

// print the second to the last planet
// var planets = ["Mars", "Venus", "Uranus", "Pluto"]
let secondToLastPlanet = planets[planets.count - 2] // prints uranus
print("Second to the last planet is \(secondToLastPlanet)")
print()

// print the middle planet
// declare a variable middlePlanet and print out it's value
// var planets = ["Mars", "Venus", "Uranus", "Pluto"]
let middlePlanet = planets[planets.count / 2]                               // FIGURE IT.
print("Our middle planet is \(middlePlanet)")
print()

//==============================================
//    Some Properties and Methods on Arrays
//==============================================

//property - variable on an object e.g. planets.count, isLetter(only works for char)
//method - a function that runs on an instance of an object e.g. planets.append(:_)

// first
// if planets.first is NOT nil assign (contains a value) the value to the firstPlanet constant

// think about planets.first as being a condition of true or false where if first does not exist the condition is false, if first exist then the condition is true

let weather = 75 < 100

// Both ways of declaring the are valid
var programmingLanguage:[String] = [] // type annotation
var aLanguage = [String]() // type of inference

//==============================================
//   Append to an Array - add to an array
//==============================================

// using isEmpty property on an array
// isEmpty is preferable over using .count
if programmingLanguage.isEmpty {
    print("We need to start programming")
} else {
    print("Programming is Fundamental")
}
print()
 
//var programmingLanguage:[String] = []
if programmingLanguage.count == 0 { // this is an empty string.
    print("What are you waiting for?")
}
print()

// var programmingLanguage:[String] = []
if let firstProgrammingLanguage =
    programmingLanguage.first {   // prints if there is a valid value of String
    print("first programming language is \(firstProgrammingLanguage)")
} else {
    print("looks like you haven't starting using any programming languages")
}
print()

//==============================================
//  Remove(at:) - removing items from an array
//==============================================

var plant = ["Mars", "Venus", "Uranus", "Pluto"]
print("There are \(plant.count) plants")
print()

// var plant = ["Mars", "Venus", "Uranus", "Pluto"]
plant.append("Pluto")
print("There are \(plant.count) plants.")
print(plant) // pluto has been added
print()

// var plant = ["Mars", "Venus", "Uranus", "Pluto"]
let removedPlant = plant.remove(at: plant.count - 1)
// removes pluto
print("Looks like \(removedPlant) was ditched again 🙂.") // print pluto
print()

print("There are \(plant.count) plants") //prints 4 plants
print()

let randomPlanet = plant.randomElement() ?? "Earth" // using nil-coelescing ?? default to a value of "Earth"
print("random plant is \(randomPlanet)") // prints any value from the array
print()

plant.removeAll() // removes all values from the array

let oopsAnotherPlanetIsGone = plant.popLast() ?? "the planet was gone"
// removes and returns the last element
print("another planet was gone \(oopsAnotherPlanetIsGone)") // prints ... the plant was gone
print()

//==============================================
//            Modifying Arrays
//==============================================

var classRoom1 = ["Maigrett", "Gregg", "Adam"]
var classRoom2 = ["Aaron", "Jack", "Vic"]
// concatenating arrays together
// NOTE: when adding arrays together they need to be of the same data type
classRoom1 += classRoom2
print("classroom 1 has \(classRoom1.count) of fellows") // prints 6 fellows
print()

//==============================================
//     Iterating or Looping through Arrays
//==============================================
// method 1: interating through array using for-in loop without using an index
for planet in planets {
    print("Planet is \(planet)") // prints alls planets
}
planets.append("Neptune")
print()

// method 2: interating using enumerated() to gain access to the current index in the for-in loop
for(index, planet) in planets.enumerated() {
    print("\(planet) \(index + 1)")
}

// method 3: using a range
for index in 0..<planets.count - 1 { //the index of each element in the array
    print(planets[index]) // also prints nubers after the planet name
}
print()

//==============================================
//Remove all Elements in an Array using removeAll()
//==============================================

plant.removeAll() //removes all the elements in the array
print("There are \(plant.count) plants in the solar system")
print() 

var collection = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
var dwarfPlanet = ["Pluto"]

// declaring an array using an array literal
var planets3 = ["Mercury"]
var planet4 = ["Venus", "Golden", "Mars", "Jupiter", "Saturn", "Uranus"]

// accessing "Earth" planet using subscripting [2]
let thirdRock  = planet4[1] // prints Golden
print(thirdRock)
print()

// accessing the last planet
let last = planets[planets.count-1] //prints the last planet
print("The last planet is our solar system is \(lastPlanet).")
print()

// ================================================================
// Notes

var p = ["Mars", "Venus", "Uranus", "Pluto"]
p[2] += " (home)" // adds to the element
print(p)
print()

let theMatrix = [[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]]

var emptyDoubles: [Double] = []
print(emptyDoubles)
print()

var emptyFloats: Array<Float> = Array() // this also an array
print(emptyFloats)
print()

let streets = ["Albemarle", "Brandywine", "Chesapeake"]
for street in streets {
    print("I don't live on \(street).")
}
print()

let oddNumbers:[String] = ["Stephanie", "Ramos"]
if oddNumbers.isEmpty {
    print("I don't know any odd numbers.")
} else {
    print("I know \(oddNumbers.count) odd numbers.")
}
print()

if let firstElement = oddNumbers.first, let lastElement = oddNumbers.last {
    print(firstElement, lastElement, separator: ", ") // adds the comma after the first
}
print()

var students = ["Ben", "Ivy", "Jordell"]
students.append(contentsOf: ["Nancy"])
print(students)
print()

students.insert("Liam", at: 3) // adding "Liam in the insert"
print(students)

students.remove(at: 0) // to remove the first element
print(students)

students.removeLast() // to remove the last element
print(students)
print()

if let i = students.firstIndex(of: "Jordell"){ // type what you want to replace
    students[i] = "Steph" // replace an existing element with a new value by assigning the new value to the subscript.
}
print(students)
print()

let newArr = Array(repeating: "Hello", count: 5)
print(newArr)
