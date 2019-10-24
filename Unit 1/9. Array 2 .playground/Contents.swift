import UIKit

//==============================================
//              Arrays
//==============================================

var musicalArtists = ["John Mayer", "Bob Marley", "Burning Spear", "Steel Pulse", "The Beatles", "Norah Jones", "Lauryn Hill"]

let artist = musicalArtists[2]
print("Current playing \(artist) on Spotify")
print()

// array slice
// a view of the array
let reggaeStars = musicalArtists[1...]
print("Some reggae superstars are \(reggaeStars)") // prints all the elements starting at 1
print()

// modify the value of an array using subscripting
musicalArtists[1] += " (Reggae Legend)"
print(musicalArtists)
print()

// replace an element using subscript
musicalArtists[musicalArtists.count - 1] = "Prince"
print(musicalArtists)
print()

// tuple review
let artist1 = (name: "John Mayer", genre: "Pop")
let artist2 = (name: "John Mayer", genre: "Pop")
let artists = [artist1, artist2]

for artist in artists { // both of them are in the artist
    print("artist name is \(artist.name)")
}
print()

//==============================================
//        Multi-Dimensional Arrays
//==============================================

let musicalArtist = (name: "John Mayer", genre: "Pop")
// count on multi-dimensional array

let matrix = [[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]]

print("current count is \(matrix.count)")
print()

// using a for-in loop print out the elements of the matrix
for arr in matrix {
    print(arr)
    for num in arr {
        print(num, terminator: " ")
    }
    print()
}
print()

// using subscripting on a multi-dimensional array
for arr in matrix {
    for num in arr { // first time ran => 1, 2, 3
    print(num, terminator: " ")
}
print()
}

let firstInnerArray = matrix[0]
print("First element in matrix array is \(firstInnerArray)")
print()

// print out last element of the array
print("the last element in matrix array is \(matrix[matrix.count-1])")
print()
 
//==============================================
//                Appending
//==============================================

// using type inference
var programmingLanguages = [String]()
programmingLanguages.append("")
print(programmingLanguages)
print()

if let firstProgrammingLanguage =
    programmingLanguages.first {
    print("\(firstProgrammingLanguage)")    
}

