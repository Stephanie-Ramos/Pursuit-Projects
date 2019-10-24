import UIKit

var str = "Hello, playground"

// Access Control allows to protect your properties


//==============================================
//          Encapsulation
//==============================================

enum Category {
    case technology
    case art
    case health
    case fashion
}

struct Event {
    private var location = String() // 💡 all properties are public. ☢️
    private var time = String()
    private var peopleAttendence = Int()
    private var nameofTheEvent = String() //💩 names are different (name) // 💡 private keyword: ✏️⏺ Because of this, the memberwise initializer doesnt work. Then, you would have to use the init(). in the struct.
    private var category: Category // 🤖⏺ this can be an enum Category datatype from String()
    
    // create an instance method called info()
    // print the peopleAttendance will attend using string interpolation
    // ✏️⏺ my notes: why would i use init()? When my properties are private.
    init(location: String,// 💡 when using your de initializer you do not rely on your enum case values.
        time: String,
        peopleAttendance: Int,
        nameOfTheEvent: String,
        category: Category) {
        self.location = location
        self.time = time
        self.peopleAttendence = peopleAttendance // 💡 on the L when initializing
        self.nameofTheEvent = nameOfTheEvent
        self.category = category
    }
    func info(){
        print("\(peopleAttendence)")
    }
    
    mutating func updateEvent(newEvent:Event){
        
        // update all properties
        time = newEvent.time // 💡get a compile error of self is immutable
        location = newEvent.location
        
        // update ALL properties
        self = newEvent // 💡self has been initialized to newEvent and it has upated all properties. ☢️
    }
}

// ✏️⏺ structs only have memberwise init. look at my notes This is happening because I have used init() in my class that has this effect.
var event = Event(location: "D", time: "10:30AM", peopleAttendance: 30, nameOfTheEvent: "Dancing with the Stars", category: .art)  // 💡 all properties are public. ⏺ this has been set to private. ☢️
// event.nameOfTheEvent = "blank" // 💡 this does not work because it property it set to private.
event.info() // 💡 this still doesnt work.

let newEvent = Event(location: "location", time: "10:00PM", peopleAttendance: 1, nameOfTheEvent: "event", category: .health)
event.updateEvent(newEvent: newEvent)


// use init methods to encapulate all the properties 🐻

//struct Fellow {
//    let age: Int
//}
//let steph = Fellow(age: 20)
//
//class Dog {
//    var breed: String
//}
//let dog =
