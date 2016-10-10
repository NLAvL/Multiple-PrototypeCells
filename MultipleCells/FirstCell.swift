//
//  FirstCell.swift
//  MultipleCells
//
//  Created by Arthur Loo on 12/09/16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import UIKit

class FirstCell: UITableViewCell {
    
    
    //MARK:- Public API
    var modelCell1 : Model! {
        didSet {
            configureCell()
        }
    }
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!

    func configureCell() {
        self.firstLabel.text = modelCell1.firstVariable
        self.secondLabel.text = modelCell1.secondVariable
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
