//
//  AddQuestionTableViewController.swift
//  Q & A
//
//  Created by Madison Waters on 9/10/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class AddQuestionTableViewController: UITableViewController, AddQuestionTableViewCellDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    func answerQuestionButtonTapped( on cell: AddQuestionTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
        guard let questionCell = cell as? AddQuestionTableViewCell else { return cell}
        
        let question = questionController.questions[indexPath.row]
        questionCell.question = question
        questionCell.delegate = self
        
        return questionCell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            let question = questionController.questions[indexPath.row]
            questionController.deleteQuestion(askQuestion: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
        //Segue Names - submitAnswer & submitQuestion
        
        
//        guard let destinationVC = segue.destination as? AnswerViewController,
//            let indexPath = tableView.indexPathForSelectedRow else { return }
//
//        let question = questionController.questions[indexPath.row]
//
//        destinationVC.questionController = questionController
//        destinationVC.question = question
        
        
//        PrepareForSegue
//        Go back to the QuestionsTableViewController class. Now that the destination view controllers that this view controller segues to are implemented, fill out the prepareForSegue method.
//        If the segue is going to the AskQuestionViewController, you need to pass the questionController.
//        If the segue is going to the AnswerQuestionViewController, you need to pass the questionController, and the question that the user tapped on and wishes to view and/or add an answer to.
    }

    var questionController = QuestionController()
    
}

//Implement the commit editingStyle method to allow for deleting question cells. (remember to delete a Question before you delete the cell)
//    Add the viewWillAppear method. Reload the table view in it so that when a new question or answer gets added, the table view will reflect these changes.
