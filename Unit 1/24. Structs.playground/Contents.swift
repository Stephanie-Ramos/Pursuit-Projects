import UIKit

var str = "Hello, playground"


// Structs: is a building block of a method in which we emulate an "object" in Swift

// Struct Syntax

//SomeStruct below defines an "object"
//Object-oriented programming (OOP) - encapsulates properties and methods on real world objects.
struct SomeStruct {
    // definition of the struct includes the following:
    // properties - variables or constants on the data type (struct)
    // initializers - the method in which you create a type
    // methods - function inside of a custom type (struct)
}

struct Resolution {
    // properties
    // stored properties - a property with a defualt value
    // a property is a variable or constant
    
    var width = 0
    var height = 0
    
}

//==============================================
//   Create an Instance of Resolution Project
//==============================================

var someResolution = Resolution()
//cant declare it with a constant

//accessing properties of Resolution by using dot syntax
someResolution.width = 180 // from the Resolution

print(someResolution)
//prints Resolution(width: 180, height: 0) // prints all the properties and the current values per initializer

// structs have a (memberwise initializer) as opposed to a class that does not
// memberwise initializer is only avaliable in structs
var vga = Resolution(width: 640, height: 480)
print(vga)

//==============================================
//     Structs and Enums are Value Types
//==============================================

let hd = Resolution(width: 1920, height: 1080)
// the properties are width and height

var cinema = hd
// cinema is copied of hd above in the constant
// this does not change the original copy

// what is teh value of cinema here // 1920
print(cinema.width)// 1920

cinema.width = 2048

// what is the value of hd's width?
print(hd.width) // this would be 2048
print()

//==============================================
// Using Object-Oriented Programming to Model a Fellow
//==============================================

enum ProgrammingLanguage {
    case swift
    case java
    case javascript
    case python
    case noLanguage
}

// Don't make the struct names plural
struct Project {
    var projectName = ""
    var projectDescription = ""
    var language = ProgrammingLanguage.noLanguage // this only works with the assignment operator and it would print "noLanguage" 💡 Yes.
    // as a property value, you initialized the enum datatype with the case by using the dot syntax to extract the raw value.
}

// 💡the initializer wouldnt work if I have a struct inside an enum.
// the enum and struct must have different blocks of code

    //==============================================
    //             Initializers
    //==============================================


    //==============================================
    //               Methods
    //==============================================

enum Cohort {
    case iOS
    case android
    case web
    case dataScience
}


struct Fellow {
    // objects have properties, think of them as attributes 💡
    //==============================================
    //      Properties - Variable and Constants
    //==============================================
    
    var name = "John Appleseed" // stored properties
    var cohort = Cohort.iOS // this would set a default value in a struct with an enum, rawValues dont exist in structs.
    var programmingLanguages = [ProgrammingLanguage]() // we are declaring with an array of our custom data type
        // we extracted ProgrammingLanguage from another enum.
        // why is ProgrammingLanguage datatype in an array? ☢️⏺ Because we have a list of programming languages and the fellow may have more than one so it is stored in an array.
    var githubURL = ""
    var linkedInURL = ""
    var hasProgrammingBackground = false
    var projects = [Project]() // we extracted Project from another struct
    
    // In the properties, datatypes may be either struct or enum or other datatypes. 💡 When do you ever want these? ☢️⏺ When you are specifying exactly what in a property in a struct, you have the custom datatype be an enum (what postion is a soccer player playing?). If you want to use a custom struct datatype, then this is good for when you want to link your data from a small piece of data (what projects is the fellow working on? which then has the details of each project in an array).
  
    
    
    //==============================================
    //             Methods
    //==============================================
    // objects have methods, think of them as actions // What are the objects in enums, structs, and classes? ☢️⏺ object oriented programming allows for objects to have attributes and behaviors. These are found in functions, properties and methods.
    
    // instance methods. an instance method is when you are calling a function 💡
    // can only be called using instanceName.info()
    // ex. greg.info()
    func info() { // the function is inside the struct
        print("\(name) currently has \(projects.count) portfolio project(s)")
    }

    // 💡 programmingLanguages is being taking away Struct Fellow, so this would only work if assign the value to Fellow and employer is looking for that skill.
    func resume(language: ProgrammingLanguage) { // this is from an enum datatype. Functions use enum data types. 💡
        // self represents the instance of Fellow that called resume ex. gregg.resume(language: .swift)
        if self.programmingLanguages.contains(language) { // ☢️⏺ use self when you want the initializer to type it for yourself.
            // programmingLanguages is what we are extracting from the Fellow.
            print("\(name) can be hired for this \(language) position.")
        } else {
            print("\(name) is not qualified for this position")
        }
    }
}


// ⛔️
// creating instances of Fellow
// creating an instance using the default initializer of Fellow()
var greg = Fellow()
greg.name = "Gregg"
greg.cohort = .iOS
greg.programmingLanguages = [.swift] // 💡 This is an array so you can add on to your skills.
greg.projects.append(Project(projectName: "Hangman", projectDescription: "Hangman command-line macOS  application", language: .swift)) // to add an array and .swift because it knows what we will write. this is all in a struct.
    // 💡 We are adding the projects directly.
    // 💡 When you have errors in your struct Project then it wont compile regardless if you have every correct.
greg.info()
// Fellow.info() runs the print statement from info()

 
// creating an instance of Fellow() called oscar and used the memberwise initializer

// ⏺ A property was not letting me jump to definition.
var oscar = Fellow(name: "Oscar", cohort: .iOS, programmingLanguages: [.swift], githubURL: "https:github.com", linkedInURL: "https://linkedIn.com", hasProgrammingBackground: false, projects: [Project]()) // 💡 This outputs the number of projects oscar has for the programmingLangauges, it is an array and the compiler already knows your cases and probably values. // projectName: nil, projectDescription: nil, programmingLanguage: nil)
// cannot have nils in your cohort nor your oscar instance
// when you have an enum, then there is less likely for the accident errors.
// 💡 We have append these projects to struct Projects. on the array of different kinds of projects.
// memberwise intializer are in structs and use .init() 💡 after your struct name, datatype.
// ⚠️☢️⚠️ 🦷 Do you have to use the .init() after the struct datatype as above? No. But why do we used it here. see line 160. What can we do with .init()s? Can we have this in classes? No. We didn't use this in our lecture notes. But this may come up down the line. I omitted my .init() after Project/
// ⏺ Use init() in a struct when you have a private stored property.
// the properties in structs must be initialized. If you have a literal empty string or String() in your property, then it would work. 💡
//oscar.projects.append(Project(projectName: "Yosemite", projectDescription: "El capitan", language: .swift)) // ⚠️

oscar.info() // has now has 1 project.


// ⛔️
// instances of Project
let calculatorApp = Project(projectName: "Calculator", projectDescription: "Calculator command-line application", language: .swift)
let instagramClone = Project(projectName: "Instagram Clone", projectDescription: "Best photo sharing social app", language: .swift)

// add a project to oscar's portfolio.
oscar.projects.append(calculatorApp)
oscar.projects.append(instagramClone)
//oscar.projects.append(Project(projectName: "Bikes", projectDescription: "no description", programmingLanguage: .swift)) // ⏺ this compiles an error because you already have a project to oscar and you cannot have multiple. ⚠️
// cannot add multiple projects in one append.
oscar.info() // 4 projects
oscar.resume(language: .javascript)
// does not qualify for this position
oscar.resume(language: .swift)
// qualifies for this position and gets hired.



greg.projects.append(instagramClone)
greg.resume(language: .swift) // ⚠️☢️⚠️🦷 // why is this not printing?

