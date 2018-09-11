//
//  QuestionController.swift
//  Q & A
//
//  Created by Madison Waters on 9/10/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    func createQuestion (question: String, asker: String, answer: String, answerer: String) {
        var askQuestion = Question(question: question, asker: asker, answer: answer, answerer: answerer)
        questions.append(askQuestion)
        return askQuestion
    }
    
    func updateQuestion (askQuestion: Question, question: String, asker: String, answer: String, answerer: String) {
        guard let index = questions.index(of: askQuestion) else { return }
        
        var update = askQuestion
        
        update.question = question
        update.asker = asker
        update.answer = answer
        update.answerer = answerer
        
        questions.remove(at: index)
        questions.insert(update, at: index)
    }
    
    func deleteQuestion (askQuestion: Question) {
        
        if let index = questions.index(of: askQuestion) {
        questions.remove(at: index)
        }
    }
}

