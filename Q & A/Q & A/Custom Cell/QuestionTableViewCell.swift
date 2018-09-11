//
//  AddQuestionTableViewCell.swift
//  Q & A
//
//  Created by Madison Waters on 9/10/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class AddQuestionTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var customLabel: UILabel!
    
    @IBAction func addQuestion(_ sender: UIBarButtonItem) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
