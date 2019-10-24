import UIKit

var str = "Hello, playground"

// MY response
//enum Coin: Int {
//    case penny = 1
//    case nickle = 5
//    case dime = 10
//    case quarter = 25
//}
//
//func getTotalValue(from array: [(number: Int, coin: Coin)]) -> Int {
//
//    var total = 0 // 💡 I had this part right
//    for num in array { // 💡 I had this part right
//        total += num.0 * num.1.rawValue // ☝🏽 this could have been found in my switch statement. I was not aware that I could have assign my conditional statement from a value of my array here.
//    }
//    return total // 💡 I had this part right
//}
//let coinArr: [(Int, Coin)] = [
//    (10, .penny),
//    (15, .nickle),
//    (3, .quarter),
//    (20, .penny),
//    (3, .dime),
//    (7, .quarter)
//]
//let expectedTotal = 385 // this is an int.
//let total = getTotalValue(from: coinArr)
//assert(total == expectedTotal, "Was expecting \(expectedTotal), but got \(total)")

// CLASS response
enum Coin: Int {
  case penny = 1
  case nickle = 5
  case dime = 10
  case quarter = 25
}

// Your function here

func getTotalValue(from tuples: [(numberOfCoins: Int, typeOfCoin: Coin)]) -> Int { // 💡 This is a tuple in an array
  var totalNumberOfCents = 0
  for tuple in tuples {
    switch tuple.typeOfCoin { // 💡 this is coming from a value of our argument label
    case .penny:
      totalNumberOfCents += Coin.penny.rawValue * tuple.numberOfCoins
    case .nickle:
      totalNumberOfCents += Coin.nickle.rawValue * tuple.numberOfCoins
    case .dime:
      totalNumberOfCents += Coin.dime.rawValue * tuple.numberOfCoins
    case .quarter:
      totalNumberOfCents += Coin.quarter.rawValue * tuple.numberOfCoins
    }
  }
  return totalNumberOfCents
}

// Uncomment the lines below to test your solution
 let coinArr: [(Int, Coin)] = [
   (10, .penny),
   (15, .nickle),
   (3, .quarter),
   (20, .penny),
   (3, .dime),
   (7, .quarter)
 ]
 let expectedTotal = 385
 let total = getTotalValue(from: coinArr)
 assert(total == expectedTotal, "Was expecting \(expectedTotal), but got \(total)")




