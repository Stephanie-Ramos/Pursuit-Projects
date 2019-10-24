import UIKit


// Structs, Classes, and Initialization

// Differences between Class & Struct 💡
/*
 structs have a memberwise initializer vs. classes do not.
 classes have to provide an initializer if any of its properites do not have a default value
 classes have inheritance and structs do not
 In structs if you're in a function that modifies one of its properties that instance method needs to be explicitly marked "mutating" due to the nature of immutability of a struct vs classes this is not a fact. Because classes are passed by reference which makes it mutatable by default. ☢️⏺ // Is this acting like override func? The override does not affect the original. mutating func allows it mutate and to affect itself.
 classes have deinitializers and struct do not ☢️⏺🦷
 */

//==============================================
//  Mutating Func & Static Keywords in Structs
//==============================================


struct Fellow {
    
    // type properties
    static let currentYear = 2019 // but you can have Fellow.currentYear 💡 and have a print statement after the struct.
    // 💡 This would still run if you have initialized your property with Int(), thus outputs 0. But not if you have type annotation with a static keyword.
    
    // stored properties (for instance methods)
    var age: Int //cannot have Fellow.age 💡 once you have a static keyword.
    var cohort: Double // 💡 if this is an optional datatype then it would have a value of nil
    var currentlyEmployed: Bool
    
    // type method (this is used in the terminology), class method, static methods
    static func programInfo() {
        print("This is a 10-month intensive program")
    }
    
    // this is still an instance method
    mutating func employed(isEmployed: Bool) {
        currentlyEmployed = isEmployed // To change your bool from isEmployed, then you must used mutating func keywords.
        // currentlyEmployed is from one of your stored properties, then to reassign or initialize based on initializing below
        // 💡 the argument label is your output for initializing the stored property
        // 💡 mutating static func does not exist
        // 💡 dont need another function above in order to have a mutating func, mutating func allows it mutate and to affect itself
    }
}
// accessing a type method of programming
print("Pursuit fellows current year is \(Fellow.currentYear)") // with the static keyword on a type property
print(" \(Fellow.programInfo())") // with the static keyword on a function

print(Int.max) // this is stored in our compiler
//let someInt = 0
//someInt.max // 💡 The instance cannot call on type of property for max of int in someInt.

// making use of struct's memberwise initializer
var yulia = Fellow(age: 21, cohort: 6.3, currentlyEmployed: false)
yulia.employed(isEmployed: true) // 💡
if yulia.currentlyEmployed {
    print("When are you taking me out to eat?")
} else {
    print("Lunch is on me today.")
}

//==============================================
//  Initializer with Init and self. Keywords in Classes
//==============================================

// 🚫
class Animal {
    
    var age: Int // ☢️⏺ why are the default values left out? in classes!? The init() initializes the stored properties so you do not require default values.
    var breed: String
    var color: String = "White" // without default values then it compiles an error
    init(age: Int, breed: String) { // so initialize it with init
        self.age = age
        self.breed = breed // 💡 you don't need color because it already has been initialized above with a default value.
    }
    // instance method
    func info() {
        print("\(breed) is \(age) old and is \(color)")
    }
}
// Dog is inheriting Animal
// subclass in Dog, parent class in Animal
class Dog: Animal {
}
// 💡 This inherits from the class initialization
// created an instance of Dog called bulldog
let bulldog = Dog(age: 11, breed: "French kind")
bulldog.info() // this prints all the stored properties of the instance bulldog
bulldog.color // 💡 changed the default value.

//==============================================
//        Static Keyword in Classes
//==============================================

// 🚫
// you can also have static in classes
class Adult {
    var age: Int
    static var count: Int = 0 // changing variable, the count is at 0.
    init(age :Int) {
        self.age = age
        Adult.count += 1 // 💡 after the static var, then you use Adult.count, whenever the age is officially initialized then the count is incremented by 1. Adult is acting like a variable that has an array (has a value). ☢️⏺ Why is this declared here? The Adult.count still works at the bottom with this as you can call it, but it does not count.
    }
}
print(Adult.count) // prints 0
let fellow1 = Adult(age: 17)
let fellow2 = Adult(age: 33)
print(Adult.count) // prints 2

//==============================================
// Convenience Init Keyword in Class for a Dictionary
//==============================================

// 🚫
class Playlist {
  // properties
  var name: String
  var trackCount: Int
  var description: String
  var isTop100: Bool
  
  // designated initializer
  init(name: String,
       trackCount: Int,
       description: String,
       isTop100: Bool){
    self.name = name
    self.trackCount = trackCount
    self.description = description
    self.isTop100 = isTop100
  }
    // 💡 This is another method to initialize dictionary.
  // convenience initializer and failable initializer (if it has a nil)
    // This takes a dicitionary
    // a key may be nil, so we would have to unwrap
    // 💡 ? failable initializer
    convenience init? (dict: [String: Any]) { // because it can fail, you must add the question mark and use the convenience only for a dictionary
        // using guard let to unwrap value from key in dictionary
        // also we are using optional downcasting as? to case to expected type
        guard let name = dict["name"] as? String, let trackCount = dict["trackCount"] as? Int, let description = dict["description"] as? String, let isTop100 = dict["isTop100"] as? Bool  else { // 💡 the value is Any datatype
            return nil // every initializer returns an object that is created.
            // if this returns nil then, it exits 💡 the initializer and does not go through the function instance method
        }
        // if all values are true, then call the designated initializer
        // 💡 to initialize the dictionary data type in a class
        self.init(name: name, // ☢️⏺ Explain more with this. Perhaps I can use it in my struct? Then the values will call itself.
                  trackCount: trackCount,
                  description: description,
                  isTop100: isTop100)
        
    }// creates a random playlist ☢️⏺ you dont need a question mark because names will not a nil value in the array.
    convenience init () { // ☢️⏺ Explain the let names
        let names = ["Pursuit Coding List",
                 "Zumba rocks",
                 "Study playlist",
                 "90's",
                 "Morning Run"]
        // 💡the self.init grabs the elements from let names and uses it with the randomElement
        self.init(name: names.randomElement() ?? "Z100", // randomElement ☢️✌🏽 what is it coding in finding the bigger picture?
                  trackCount: 200,
                  description: "Awesome coding music",
                  isTop100: false)
        //
    }
    // 💡the user cannot create a playlist if the num of character in name is greater than 2. if/else statement.
    convenience init?(name: String) {
        if name.count < 3 { // if the count is more than 3 letters in the name
            return nil
        }// then proceed with initializing values and so forth
    self.init(name: name, //💡 have to initialize for all for one component.
              trackCount: 34, // 💡 add default values
              description: "Currently trending",
              isTop100: true)
    
  // instance method
  func info() {
    print("\(name) contains \(trackCount) tracks. \(description)")
    if isTop100 {
      print("\(name) is on the top 100 Spotify list")
    }
  }
}
}
// create an instance
let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019", // 💡 instance is type annotated with no custom datatypes.
                                   "trackCount": 128,
                                   "description": "Awesome playlist",
                                   "isTop100": true]


// create a playlist using the playlistDict very shortly above and print the track count
// output: 128
// optional binding with the optinal binding name in the string interpolation
if let playlist = Playlist(dict: playlistDict) {
    print("The trackCount is \(playlist.trackCount)")
}

//💡other methods of string interpolation would cause errors:
//let otherPlaylist = Playlist(dict: playlistDict)
//print("Track count is \(otherPlaylist?.trackCount)")
//
//let anotherPlaylsit = Playlist(dict: playlistDict)
//print("The another playlist is \(anotherPlaylist!.trackCount)")



let randomPlaylist2 = Playlist()
print(randomPlaylist2.name)

// 💡 must input all of the values in dict or else it will compile an error. 💡But you can insert all the values in here like this instead.
//if let playlistWtihName = Playlist(name: "Re") {
//    print("Playlist with \(playlistWithName.name) was created")
//} else {
//    print("Playlist not created")
//}
