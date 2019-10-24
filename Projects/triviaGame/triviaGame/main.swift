//
//  main.swift
//  triviaGame
//
//  Created by Stephanie Ramos on 10/21/19.
//  Copyright © 2019 Stephanie N. Ramos. All rights reserved.
//

import Foundation


// ☢️ This would help in creating our game.
//print("There are \(Trivia.data.count) elements in trivia data")
//
//var questions = ["What is the highest grossing movie of all time?"]

// create an instance of Game()
//let game = Game()
//
//game.createQuestions(.movieTrivia)




// 1. create a Game instance.
let game = Game() // 💡 from our class (Game.swift)

let userPrompt =
"""
Select the type of Trivia you would like to play?
1. Movie Trivia
2. Sports Trivia
3. Music Trivia
4. NYC Trivia
"""
// 2. Create a property called playAgain and set it to false. This will be modified base on if the user wishes to continue playing.
var playAgain = false

// 3. Use a repeat-while to start playing the game.
repeat {
    print(userPrompt)
    let userResponse = readLine() ?? ""
    game.selectTrivia(userResponse) // Jump to Definition on the selectTrivia. // 💡 this is from our last funciton in (Game.swift)
    
    repeat { // 🔅 nested reapt while loop
        // 4. Use an embedded repeat-while to loop over all current questions.
        
        guard let question = game.getQuestion() else { // 💡 this is a function from (Game.swift)
        break // 💡unwrapping getQuestion because our return data type is optional
        }
        // 5. Print the current question.
        // 6. Print the answer choices.
        print(question.question)
        print(question.choices)
        
        // 7. Check the user's answer
            let userAnswer = readLine() ?? ""
        game.checkAnswer(userAnswer: userAnswer, question: question) // this is a funciton form (Game.swift)
    // 💡 the label question is from our class Question in (Question.swift) 💡 the quesiton has been shuffled in our array based on the TriviaType.
        
    } while game.hasMoreQuestions // ⏺ used here.
    
    // 8. When there are no longer questions, print the final score and reset the game.
    game.finalScore() // 💡 function from our (Game.swift)
    // edited game reset inside step 9.
    
     // 9. Ask the user if they wish to continue playing in the outer repeat-while.
   print("Do you want to continue playing? (yes or no)")
    let shouldContinuePlaying = readLine() ?? ""
    if shouldContinuePlaying == "yes" {
        game.reset() // 💡
        playAgain = true // from above
    } else {
        playAgain = false  // 💡 or anything else really.
    }
    
} while playAgain

