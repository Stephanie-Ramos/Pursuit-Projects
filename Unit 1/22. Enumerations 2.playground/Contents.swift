import UIKit

var str = "Hello, playground"


// Enumeration 2
//==============================================
//             Associative Values
//==============================================

// add more values (types) to a case
enum MTALine {
    case redLine(Int)
    case greenLine(Int)
    case purpleLine(Int)
    case blueLine
    case orangeLine
    case brownLine
    case yellowLine(trainName: Character, startTime: Int, endTime: Int) // 💡 assigned stored properties like this in enums
    case grayLine
}

// instantiating a train using the MTALine
let train1 = MTALine.yellowLine(trainName: "R", startTime: 8, endTime: 12)
let train2 = MTALine.greenLine(5)
let train5 = MTALine.purpleLine(9)

//use a switch on train
switch train5 {
case .redLine:
    print("The 1, 2, 3 trains are running on time.")
case .greenLine(let anotherTrain):
    print("The 1, 2, 3 \(anotherTrain) trains are running on time.")
case .yellowLine(let trainName, let sTime, let eTime): // 💡to extract the values from the yellowLine, use an arbitary name, you can use this without the associative values right after the case keyword.
    print("The \(trainName) train runs from \(sTime)AM to \(eTime)AM is not running today.")
default:
    print("All trains are running normally.")
}

// 1. add an associated value for purpleLine of type Int use 8, 9, or 10 to create a new instance of a constant named train5 using our trainInformation() pass in the train5 instance and add a new case in the switch statement for .purpleLine.

// have your switch statement inside a function
func trainInformation(trainn: MTALine) { // the argument label is initially created here
    switch trainn { // 💡 the switch name should be the arguement label of the function. This is used when the function is outside of the enum statement
        // 💡 if you have a switch statement in a mutating function (with no argument labels), then use switch self keywords when all the mutating func and switch self is in your enum..
        // 💡 your switch name can be from a constant that directs from the enum.caseName for the rawValues.
        // ☢️⏺ why dont we use a mutating func here? Because mutating func only occurs in methods.
    case .redLine:
        print("The 1, 2, 3 trains are running on time.")
    case .greenLine(let greenTrain):
        print("The \(greenTrain) trains are running on time.")
    case .yellowLine(let trainName, let sTime, let eTime): //to extract that character from the yellowLine, use an arbitary name, you can use this without the associate value in enum.
        print("The \(trainName) train runs from \(sTime)AM to \(eTime)AM is not running today.")
    default:
        print("All trains are running normally.")
    }
}
trainInformation(trainn: train1)
trainInformation(trainn: train2)
trainInformation(trainn: train5)

//==============================================
//      Declaring Methods inside Enums
//==============================================

// you can use a function inside an enum statement
enum ProgrammingLanguage {
    case swift
    case python
    case objectivec
    case go
    case r
    case java
    case javaScript
    
    // functions can have custom data types are called methods
    // the only way to call a function inside an enum is to create a switch statement
    func info () {
        // we have not passed any arguements in this function
        
        // we need to switch on an instance of ProgrammingLanguage
        switch self { // whatever instance we call itself. Self is the instance that calls info()
        case .objectivec:
            print("Last major update was in 2014")
        case .swift:
            print("Swift was introduced in 2014")
        case .java:
            print("Java is used to build android apps, also heavily used on Wall Street")
        default:
            print("All languages are fun!")
        }
    }
}

// swiftLanguage is an instance of ProgrammingLanguage
let swiftLanguage = ProgrammingLanguage.swift // enum with .swift 💡// This acts like static in structs! (DataType.TypeProperty or DataType.TypeMethod)
// we use self in the switch statement because we call the .whatever case, from the original enum name, ProgrammingLanguage, 💡otherwise we would have runtime errors
swiftLanguage.info() // info is the function, calling the function with the constant

// create a ProgrammingLanguage instance that's not swift and call .salaryInfo() method.
let javaLanguage = ProgrammingLanguage.java

//==============================================
//                Raw Values
//==============================================

// set a raw value by declaring the data type in the enum
enum Day: Int { // you would need to assign a datatype or else the raw values would not compile and cannot have Any
    case monday = 1 // you can explicitly change the raw values starting position
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
print(Day.monday.rawValue) // 💡 default starting case of an Int rawValue is 0.

//==============================================
//  Initializing an Instance of an Enum with a rawValue
//==============================================

let weekend = Day(rawValue: 10)  ?? Day.tuesday // cannot put 2. 💡 nil coalesence because this is a failable initializer
//optional weekend
// days of the week
// nil coalescing
// if i put 3 in the rawValue, then I would have wednesday printed out.

print(weekend)
// there is not a rawvalue for tuesday so it prints tuesday.
// rawValues in functions act like indices in an enum statement.

// optional binding to unwrap optional num by using if let
if let possibleDayOff = Day(rawValue: 6) { // 💡 optional binding when initializing
    print("Awesome I am looking forward to \(possibleDayOff)")
    // you get the case name

    switch possibleDayOff { // 💡 this is based on the method that we use to name our switch names.
    // 💡 the optional binding name inside the if let statement
    case .saturday:
        print("Great day for BBQ")
    case .sunday:
        print("Really want to go swimming today")
    default:
        print("Just another day")
    }
} else {
    print("Not a valid day of the week")
}


//==============================================
//    Initializing a Stored Property 
//==============================================


enum iOSDeviceType {
    case iPhone(model: String)
    case iPad(String)
    case iWatch
}

var myPhone = iOSDeviceType.iPhone(model: "8+") // 💡 initializing with a value here

func deviceModelNumber(_ phones:iOSDeviceType){
    switch phones {
    case .iPhone(let model):
        print(model)
    case .iPad:
        print("The model number is unknown")
    default:
        break
    }
}
switch myPhone {
case let .iPhone(model): assert(model == "8+", "Was expecting a model type of 8+, but got \(model)")
default: fatalError("Was expecting an iPhone but got \(myPhone)")
}



