//
//  Question.swift
//  Q & A
//
//  Created by Madison Waters on 9/10/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import Foundation

struct Question: Equatable {
    
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String?, answerer: String?) {
        self.question = question
        self.asker = asker
        self.answer = nil
        self.answerer = nil
    }
}


