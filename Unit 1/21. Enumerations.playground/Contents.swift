import UIKit

var str = "Hello, playground"

//==============================================
//        Introduction to Enumerations
//==============================================

// enumerations or enums: A group of related values or items e.g. days of the week, mta train lines, number of fingers, compass points

// enum syntax
enum CompassPoint { // followed by enum the name is capitalized in following coding convention because CompassPoint is a custom datatype.
    case north
    case west
    case east
    case south
}

// create an enum of days of the week
// name the enums singular for optional good conventional style
enum Week { // cannot capitiallize the days
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

// define an enum with one case
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//==============================================
//  Using a Switch Statement on an Enum Instance to Match a Value
//==============================================

// instance of a String
var name = "Thunder"

// creating an instance of the enum Week
let day = Week.tuesday // use dot notation syntax to access the case
// Week is the data type of the day variable

// Reassignment of the variable on an enum datatype
var weekendSat = Week.saturday // you cannot contencentate the cases in a variable
weekendSat = .sunday // 💡 do not need to require the Week. however it will still compile if you use it.

// what day you have printed for day variable?
switch day { // one case per time
case .monday:
    print("Back to Pursuit")
case .tuesday: // this is the same thing as calling it Week.tuesday
    print("Enum Lab is Due")
case .wednesday:
    print("Professional Skills")
case .thursday:
    print("Work on Project")
case .friday:
    print("Submit Weekend Homework")
case .saturday:
    print("Bike along the River")
case .sunday:
    print("Review Material")
} // Because we handled all the cases in the enum statement, we do not require a default. This is finite.

//==============================================
//      Iterating Through an Enum Cases
//==============================================

enum Beverage: CaseIterable { // declare the enum name with CaseIterable, which confirms the protocol, in order, to count the number of cases
    case coffee, tea, juice
}
// to count the number of cases
print("There are \(Beverage.allCases.count) beverages") // use 💡.allCases in order to use all of the cases then count.

// For-In Loop with in Enum Statement
for beverage in Beverage.allCases { // 💡 you can use an arbitary name for beverage such like all other for-in loops
    print("Current beverage is \(beverage).")
}


//==============================================
//     Enum with a Function and Switch Self
//==============================================

enum BrightnessLevel {
  case off
  case low
  case medium
  case high
  func printDescription() {
    switch self { // the self keyword calls on itself.
      case .off:
        print("The light is off")
      default:
        print("The brightness level is set to \(self)")
    }
  }
}
let levelOne = BrightnessLevel.low //initializing the enum with its case
levelOne.printDescription()
//The brightness level is set to low

let levelTwo = BrightnessLevel.off 
levelTwo.printDescription()
//The light is off

