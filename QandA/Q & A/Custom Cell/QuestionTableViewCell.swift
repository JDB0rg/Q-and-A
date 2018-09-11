//
//  AddQuestionTableViewCell.swift
//  Q & A
//
//  Created by Madison Waters on 9/10/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

protocol AddQuestionTableViewCellDelegate: class{
    func answerQuestionButtonTapped( on cell: AddQuestionTableViewCell)
}

class AddQuestionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var customLabel: UILabel! // Answer Label
    
    @IBAction func addQuestion(_ sender: UIBarButtonItem) {
        
        // inject delegate here
        //delegate?.answerQuestionButtonTapped(on: self)
    }
    
    private func updateViews() {
        
        guard let question = question else { return }
        
        questionLabel.text = question.question
        askedByLabel.text = question.asker
        
        if question.answer == nil || question.answer == "" {
            customLabel.text = "Can you answer this?"
        } else {
            customLabel.text = "Tap to see answer"
        }
    }
    
    weak var delegate: AddQuestionTableViewCellDelegate?
    
    var question: Question? {
        didSet{
            updateViews()
        }
    }
    
}

//QuestionTableViewCell

//Create a private method updateViews(), that takes the values in the question variable and sets the text of the labels accordingly. Make sure you unwrap the question.
//Add a didSet property observer to the question variable, and call updateViews() inside of it.
