   import UIKit

var str = "Hello, playground"


//==============================================
//               Classes
//==============================================

// classes: building block that enable us to create complex "objects" in our program. Those objects are created using properties and methods.

//==============================================
//               Class Syntax
//==============================================

class MyFirstClass { // without any parenthesis for now
}

// Day does not has added functionality to count how many cases it has.
// enum Day confirms to caseiterable in order to get more functionality
// caseIterable is a built in protocol
enum Day: CaseIterable {
    case monday, tuesday, wednesday
}
Day.allCases.count

//==============================================
//          Inheritance
//==============================================

// class does not inherit from other structs.
// only classes can inherit from other classes
// parents cannot inherit from classes (children)
class Person { // are these also like attributes? 💡 Structs are preferred.
    var name = "Jane" // these are stored properties because you already have them in your class datatype.
    var age = 1
    
    // instance method
    func info() {
        print("This is a person name is \(name) and age is \(age)")
    }
}
// Fellow inherts from Person
// Fellow is a subclass of Person
// Person is the parent or superclass of Fellow
// In Swift, we only have single inheritance, meaning you can ONLY inherit from one parent
    // object-oriented programming consists on those concepts:
    //-inhertaince
    //-encapsulation use private access modifiers on your properties and access them externally through methods ☢️⏺ initialize your variables with the Parent/ subparent classes.
    //-polymorphism - changing the form of an object ☢️⏺ // this is done with property values that are engaged in the initializers and modifications, and referenced to the Parent and subparent classes.
        // The class Fellow inherits from the Person class above
            //second class method
class Fellow: Person { // class within a class.
    // func info { this does not compile because parent has the same method name so fellow needs to use the override keyword // 💡 this would only work. All of the classes have their individual block of code.
    override func info () { // this does not change the original. 🤙🏽⏺. You can still access the info without a for loop by creating an instance of Person().
    print("\(name), this is a fellow at Pursuit and is \(age) years old")
    }
}
   // In order to link the classes you must declare the class Parent Name 💡
 
class Employee: Person {
    
    var position = "iOS Developer" // properities ☢️⏺ These are the attributes you want for an Employee coming from a Person.
    var salary = 85_000
    
    // instance methods
    override func info() {
        print("\(position) is making $\(salary)")
    }
}

// In creating an instance of Fellow(), you would use let or var
let brendon = Fellow() // from what fellow is it grabbing? from shortly  above. which is inheritance form the parent above.
brendon.name = "Brendon"
brendon.age = 31
brendon.info() // from the func info at Fellow() it gets executed. ☢️⏺
   
// before Fellow() from Person which overrode info() method from the info() at Person class, the output from the print statement:
// This person name is Brendon and age is 31.
   
// after overriding info() in the Fellow class the print statement comes from the override method
// Brendon is a fellow at Pursuit and is 31 years old.

// On the other hand
//struct Artist { // this does not compile. Struct cannot inherit from other structs
//
//}
//struct PopStar: Artist {
//}

//==============================================
//  Polymorphism - Changing Form on an Object
//==============================================

// instance of a Person
let tom = Person()
tom.name = "Tom"
tom.age = 5 // without this the declared default value for age is 1 for all instances: tom, john, and bienbenido.

// instance of an Employee
let john = Employee()
john.name = "John"
john.age = 6

// instance of a Fellow
let bienbenido = Fellow() //the datatype is a Fellow
bienbenido.name = "Beinbenido"
bienbenido.age = 10

// ⛔️
// an array of instances from above
let people = [tom, john, bienbenido] // an array of instances from Person/Parent Class 💡. The elements are our variables perviously called before. perhaps this is because of the first index of the array.


// if we were to loop over the people array what for example would be the info() message for bienbenido.
for person in people { // this prints based on what you overrode on your print statements per class either in Parent or subclass.💡
    print(person.info())
}
   
// this still prints all the statements from info.
let age = [john, tom, bienbenido]
for instance in age {
    print(instance.info()) // our console log has printed info twice for a for loop! When you want to use a for loop for all of your information 💡 use the info to print all of the statements in the for loop.
}

//==============================================
//              Struct vs Class
//==============================================
   
/*
Struct are Value-Types - meaning assigning a new variable that new varibale gets a copy of the original. Changing the copy does not change the original

Classes are reference types - multiple instances point to the same object meaning object b can mutated object a
*/

// ⛔️
// creating an instance of Fellow() named anna
let anna = Fellow()
anna.name = "Anna"
print(anna.name)

// assigning luba the anna object
let luba = anna // both anna and lupa are pointing to the same object💡 this would not happen in structs!
print(luba.name) // prints anna

luba.name = "Luba"
print(luba.name) // prints luba
   
// what is anna's name if printed
print(anna.name) // prints luba because they cross reference. This is best 💡 to have one instance of property name if possible.

//==============================================
// Check for Object Equality of Identity by Using 3's ===
//==============================================
 
if anna === luba { // only in classes can have the object equality operator 💡
    print("both object are pointing to the same reference")
}

//==============================================
//    Introduction to Initializers in Classes
//==============================================

// ⛔️
struct Dog {
    var breed: String
    var age: Int
}
// creating an instance of Dog using the memberwise initializer of the Dog struct, ONLY structs, only structs provide memberwise initializers
   var frenchBulldog = Dog(breed: "French Bulldog", age: 7)
   
  // ☢️⏺ can you change the property values for this one? Yes but only with a mutatable variable (var).

// ⛔️
// compile error if class does not provide default values for all properties
class Game { // without any default values, then it won't compile.
    var name: String = ""
    var noOfPlayers: Int = 0 // 💡 You do not need default values in your structs nor raw values in your enums.

    // initializers
    init (name: String, noOfPlayers: Int) { // 💡init looks different in structs.
        self.name = name
        // basketball.name = "Basketball"
        
        self.noOfPlayers = noOfPlayers
        // basketball.noOfPlayers = 5
   }
   
        // instance method
        func info() {
            print("\(name) has \(noOfPlayers) players")
        }
}
// ☢️⏺ creating an instance of Game() called basketball. This syntax still works but memberwise initializer allows for the print statements to occur. This is happening because I have used the init() method in my class.
//   struct Test1 {
//    var name = String()
//   }
//   class Test2 {
//    var name = String()
//   }
//   let s1 = Test1(name: <#T##String#>) // this allows for the drop down menu
//   let s2 = Test2()// it does not allowed.
let basketball = Game(name: "Basketball", noOfPlayers: 5)
basketball.info() // prints Basketball has 6 players

// accesssing properties
basketball.name = "NBA" // prints NBA has 6 players
basketball.info()

// 💡 The reference values are engaged when you call upon Parent class along with the Parent subclasses properties.
   
//==============================================
//     Creaing Instance from a Dictionary
//==============================================

class Playlist {
    var name: String
    var trackCount: Int
    var description: String
    var isTop100: Bool


// initializer ☢️⏺ What does this init do? You do not have to declare default values in your required stored properties. The init() initializes itself to your initializers after your code of block.
init (name: String,
      trackCount: Int,
      description: String,
      isTop100: Bool) {
    self.name = name
    self.trackCount = trackCount
    self.description = description
    self.isTop100 = isTop100
   }

    // instance method
    func info() {
        print("\(name) contains \(trackCount) tracks. \(description)")
        if isTop100 { // this prints another statement.
            print("\(name) is on the top 100 Spotify list")
        }
    }
}
    
// ☢️⏺🦷 how can we use .init in a class? ☢️⏺ would it affect if I use it here after the init()? Use init() in structs when you have the private keyword.
//let s = Playlist.init(name: "other", trackCount: 6, description: "other", isTop100: false)
   
let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019", "trackCount": 128, "description": "Awesome Playlist", "isTop100": true] // beinbenido is a type
// ☢️⏺ Is the playlistDict and playlist functions the same? No because your datatypes are different.
//let playlist = Playlist(name: "Chill Folk", trackCount: 30, description: "radical midwestern music", isTop100: true)
//     playlist.info()


// write a function that takes a dictionary of type [String:Any]. The end result returned to an optional Playlist. ☢️⏺ Because the values could have been nil then use the return datatype optional (in func) and when you call your playlist after you initialized it(playlist?.info).
func getPlayist(dict: [String:Any]) -> Playlist { //
    // accessing the anme key in dictionary
    // type casting Any to a Datatype using optional downcasting as?
    // used nil-coalescing to unwrap optional String

    let name = dict["name"] as? String ?? "no name available"//  if our key is nil, then execute the above. as sets String as an optional datatype
    let trackCount = dict["trackCount"] as? Int ?? 0
    let description = dict["description"] as? String ?? "description is unavailble"
    let isTop100 = dict["isTop100"] as? Bool ?? false
    
    let playlist = Playlist(name: name,
                            trackCount: trackCount,
                            description: description,
                            isTop100: isTop100)

    return playlist // this in return will have a Playlist datatype
}
// calling the getPlaylist function which return a Playlist
let playlist = getPlayist(dict: playlistDict)
playlist.info()


