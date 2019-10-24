//
//  Game.swift
//  triviaGame
//
//  Created by Stephanie Ramos on 10/21/19.
//  Copyright © 2019 Stephanie N. Ramos. All rights reserved.
//

import Foundation


class Game {
    // MARK: Properties of Game
    
    // 2. To Do: write the following properties
        // a. a question array property
        // b. a score property
        // c. a total questions property
    // instance property because it doesnt have static otherwise it would be a type property
    var questions = [Question]() // 🔅 this  datatype is coming from a struct in another file, Question.swift
    var score = 0 // stored property
    var totalQuestions = 0 // stored property
    var hasMoreQuestions: Bool { // 💡 a computed property as { }
        // accessorts avaliable in swift are getters and setters
        // instance property for game.hasMoreQuestions return true or false
        // using the ! symbol to negate or toggle the current value
        return !questions.isEmpty // 💡this will let us know if the questions from the stored property above is empty.
    }
    // the datatypes are arrays because we have different types of questions in our data. No.
    // check if i got it right. No.
    
    
    // methods 💡// this still inside of the class.
    // 3. To Do: write the following methods
        // a. write a method to get a shuffled question
        //    remove the question from the questions array above
        // b. write a method to start the Game, this method creates the array of questions [Question]
        // c. write a method to check if the answer is correct and increment the score by 1.
    func getQuestion() -> Question? { // for the reason of the popLast 💡 then you want your return datatype an optional
        // ☢️ how would you know if you want to use an array of Question vs. an element of Question.=?
        // shuffle the array
            // e shuffles in place
           // ed returns somewhere else
        questions = questions.shuffled() // 💡 from your stored property, shuffled it
        return questions.popLast() // 💡 In thinking about errors ahead of time:  you may have an error if you want to remove an element if the array is already empty. Insert a 🤖〽️ for this
        // 🌷 we finished the first challenge by using a function
        // ☢️ how would this look like if we used randomElement?
    }
    // 🌷 create another method by using a func
    func createQuestions(_ triviaType: TriviaType) { // TriviaType is a datatype from our enum
        // 💡 We didnt have to use CaseIterable here
        // step 1 - loop through the array 🔅 (TriviaData.data)
        for dict in Trivia.data { // 💡 This is from our struct in TriviaData stored property, so then its Trivia.data
            //write down the element
            // step 2 - using the key triviaType in the dictionary, we need to access the value
            // ☢️⏺ why are we optional binding? In case if our value is nil in the array. This does not addressed the empty array from above.
            if let unwrappedTrivia = dict["triviaType"] as? String { // 💡 our value is a string
                // step 3 - compare the user's triviaType with the current trivia type in the dictionary
                // 💡 internally you compared your current TriviaType to all of the cases in the enum for a matching value.
                // ☢️ how did you made the connection?
                if unwrappedTrivia == triviaType.rawValue {
                    // step 4 - create a question and unwrap Question
                    if let question = Question(dict:dict) { // can create a question from your convenience init
                        // 💡 if we unwrapped and grab (Question.swift) our subelements values and an element from the data.
                        // inferring to Question.
                        // ☢️
                        // step 5 - add it to the question array
                        questions.append(question)
                        // 🤖♨️ this fixes our ahead of time error. The error was fixed right after.
                }
            }
        }
    }
        totalQuestions = questions.count
        // ⚜️ our stored properties are functioning properly.
        print("\(questions.count) was created")
}


// 5. Write a method to check if the answer is correct and increment the score by 1
func checkAnswer(userAnswer: String, question: Question) {
    if userAnswer == question.correctAnswer {
        // ☢️⏺ .correctAnswer? How is a stored property...this is converted to a property! is the from our class in (Game.swift)
        // ☢️⏺ how can we do this with other examples? .fact is the from our class in (Game.swift)
        // increment the score by 1
        score += 1 // 💡reassigned
        print("Correct Answer: \n\(question.fact)")
    } else {
        print("Wrong Answer: \n\(question.fact)")
    }
}

// 6. Write a method that prints out the final score and total number of questions
func finalScore() {
    print("Thanks for playing Trivia. You have answered \(score) of \(totalQuestions) questions.") // 💡 total questions was reassigned
}
    // 7. Write a method that resets the game if the player wishes to continue
    func reset() {
        score = 0 // resetting
        questions.removeAll() // based on the user's preference of choice, the questions will be a set of that
        // totalQuestions would be reset down the line
        // ⚠️☢️⚠️⏺ never initialized hasMoreQuestions. we used this property as a .property. in (main.swift)
    }
    // 8. Write a method that takes in the users choice of trivia e.g "1" to play movie trivia
    func selectTrivia(_ userResponse: String){ // The strings will be "1"..."4"
        switch userResponse {
        case "1":
            createQuestions(.movieTrivia) // 💡 we are calling a function in a switch statement
        case "2":
            createQuestions(.sportsTrivia)
        case "3":
            createQuestions(.musicTriva)
        case "4":
            createQuestions(.nycTrivia)
        default:
            print("Trivia type is unavailable")
        }
    }
}
