//
//  Question.swift
//  triviaGame
//
//  Created by Stephanie Ramos on 10/21/19.
//  Copyright © 2019 Stephanie N. Ramos. All rights reserved.
//

import Foundation

class Question {
    
    var question: String
    var correctAnswer: String
    var choices: String
    var fact: String
    var triviaType: TriviaType // 💡refactor String to enum of type TriviaType to edit all files! inside of individually with edit scope.
    // TriviaType gives us a finite amount of choices
    
    
    // designated initializer
    init(question: String,
         correctAnswer: String,
         choices: String,
         fact: String,
         triviaType: TriviaType) {
        self.question = question
        self.correctAnswer = correctAnswer
        self.choices = choices
        self.fact = fact
        self.triviaType = triviaType
    } // 🔅
    // To Do: create a failable convenience initializer that
     // takes in a dictionary of type [String: Any]
    convenience init?(dict: [String: Any]) { // ☢️
        guard let question = dict["question"] as? String,
            let correctAnswer = dict["correctAnswer"] as? String,
            let choices = dict["choices"] as? String,
            let fact = dict["fact"] as? String,
            let triviaType = dict["triviaType"] as? String else { // your dictionary does not have a TriviaType, it has a String.
            return nil
    }
    // 4. To Do: Get a valid TriviaType from the enum to add to the designated initializer below
        self.init(question: question, // ☢️✌🏽
              correctAnswer: correctAnswer,
              choices: choices,
              fact: fact,
              triviaType: TriviaType(rawValue: triviaType) ?? TriviaType.sportsTrivia) // creating a TriviaType using the rawValue initializer, which is a failiable initializer so you nil coalesene, or ☢️ // you have have a TriviaType optional on class Question so you wont have to nil coalescene
}

}

            
