//
//  AnswerViewController.swift
//  Q & A
//
//  Created by Madison Waters on 9/10/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController, AddQuestionTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    questionController: QuestionController?
    question: Question?
}

//AnswerViewController

//In the action of the bar button item:
//Get the text from the text field and text view, and make sure they aren't nil or an empty string ("").
//Call the model controller's "Update" method to add an answer and answerer to the question that you pass in.
//Have the navigation controller pop to the previous view controller.
//Create an updateViews() method. As this view controller is only accessible upon tapping a question cell, grab the values from the question variable and place them in the corresponding labels and text field or text view. Be aware that tapping a cell that doesn't have an answer and answerer should still display the question and the name of the person who asked it. If it does have an answer and answerer, those values should also be placed in the text field and text view accordinly.
