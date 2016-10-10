//
//  SecondCell.swift
//  MultipleCells
//
//  Created by Arthur Loo on 12/09/16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell {
    
    
    var modelCell2 : Model! {
        didSet {
            configureCell()
        }
    }
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    func configureCell() {
        self.thirdLabel.text = modelCell2.thirdVariable
        self.fourthLabel.text = modelCell2.fourthVariable
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
