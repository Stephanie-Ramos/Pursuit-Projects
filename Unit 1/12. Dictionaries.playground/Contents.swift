import UIKit

var str = "Hello, playground"


/* Dictionary: a collection of key-value pairs, the key needs to conform to the hashable protocol, this simply means the key needs to be made unique by a hashing algorithm. Dictionaries are unordered collections.
 */

let name = "alex"
let alexHasValue = name.hashValue // hashValue is an int datatype
print("\(name) has a value of \(alexHasValue)") // everytime you run it, it is going to have a different hasValue int.

let anotherName = "Stephanie".hashValue
print("Stephanie has \(anotherName)")

//==============================================
//   Initializing and Populating Dictionaries
//==============================================

// method 1: uses the initialization method
// declared and initialized an empty dictionary
// key is a type of Int
// value is a type of String
var nameOfIntegers = [Int: String]() // int can be a boolean

// count number of elements in nameOfIntegers
// count is a property on the collection protocol
// dictionary, arrays, and sets conform to collection protocol
// a property is a variable of constanton a type
print("There are \(nameOfIntegers.count) elements currently in the nameOfIntegers dictionary")

// assign a key-value (element) pair to nameOfIntegers
nameOfIntegers = [2: "two"]
nameOfIntegers[16] = "sixteen" // this is the same
nameOfIntegers[-4] = "negative four"
print(nameOfIntegers)

// can we index the first element using [0]
nameOfIntegers[0] // this is valid because the key is int even though the value is nil
let num = nameOfIntegers[0] // num is an optinal string and there is no guareentee that the key has a value

let star = nameOfIntegers[0] ?? "zero" // nil-coalescing
print(star)

let test = nameOfIntegers[2] ?? "two"// I can't access the value by using the bracket notation
// test is an optional string so I have to nil coalescene in order to have an output
print(test)


// method 2:
var airports: [String: String] = ["Copenhagen":"CPH", "Los Angeles": "LAX", "Saint Luica": "LCU"] // empty string [:] and ["":""] are still valid because it does not compile a run-time error
    // enter a comma inside the square brackets for more key-value pairs
print("There are \(airports.count) airports currently")

//==============================================
//        Accessing Dictionary Value
//==============================================

// There is an isEmpty property on dictionaries
if airports.isEmpty{
    print("Airports is empty")
} else {
    print("There are \(airports.count) airports")
}

//==============================================
//       Looping through Dictionaries
//==============================================

let bucketLists: [String:String] = ["Sweden":"Stockholm", "Mexico": "Yucatan"]

// for key, value
for (country, city) in bucketLists {
    print("I want to visit \(city) located in \(country)")
}

let destination = bucketLists["Sweden"] ?? "Fairyland" // you have to provide the key with the bracket notation regardless if it is a string, in order, to output the value in accessing the values.
    // destination is an optional string so I nil-coalesed it
print(destination)

let favoriteAlbums = ["John Mayer":"Room for Squares", "Teyana":"K.t.s.e"]

// given album name, find the artist
//let artistName = favoriteAlbums["Room for Squares"] // this has to be a key instead of a value
//print(artistName)

//let favoriteAlbums = ["John Mayer":"Room for Squares", "Teyana":"K.t.s.e"]
let albumName = favoriteAlbums["John Mayer"] // finding the albumName
print(albumName!) // this give us an optional "Room for Squares" so we forced unwrapped


// using a for-in loop to search for a given value gives us a runtime error
var artistName1 = "Not Found"
for (currentArtist, albumName) in favoriteAlbums {
    if albumName == "Room for Squares" {
       artistName1 == currentArtist
    }
}
print("\(artistName1) created the Room for Squares album")

// get values from a dictionary
let albums = Array(favoriteAlbums.values)
    // extract all the values from the array in favoriteAlbums
    // array of strings
for album in albums {
    print("Album is \(album)")
}

// get keys from a dictionary
let artists = Array(favoriteAlbums.keys) // assign to a variable then iterate in a for in loop
for artist in artists {
    print("Artist is \(artist)")
}

// dictionaries are unsorted so we will demo how to sort the values and print in a sorted manner
// sorted() by default is ascending means a-z and descending means z-a

// question: given albums, sort by artist name
for artistName in favoriteAlbums.keys.sorted() { // artistName is a string
    // you can descend the order of names with .reversed() after sorted()
    print("artist name is sorted is \(artistName)")
}
