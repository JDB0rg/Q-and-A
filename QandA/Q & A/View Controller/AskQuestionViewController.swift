//
//  AskQuestionViewController.swift
//  Q & A
//
//  Created by Madison Waters on 9/10/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    @IBOutlet weak var askQuestionTextField: UITextField! // Name
    @IBOutlet weak var askQuestionTextView: UITextView! // This is the question
    
    @IBAction func submitQuestionButtonTapped(_ sender: Any) {
        
        guard let asker = askQuestionTextField.text,
        let question = askQuestionTextView.text else { return }
        
        _ = questionController?.createQuestion(question: question, asker: asker, answer: answer, answerer: answerer)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    var questionController: QuestionController?
}



//In the action of the bar button item:
//Have the navigation controller pop to the previous view controller.
