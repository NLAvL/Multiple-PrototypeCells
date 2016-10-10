//
//  ThirdCell.swift
//  MultipleCells
//
//  Created by Arthur Loo on 22-09-16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import UIKit

protocol ThirdCellDelegate {
    func mapButtonClicked(cell: ThirdCell)
}

class ThirdCell: UITableViewCell {

    @IBOutlet weak var mapButton: UIButton!
    
    
    var delegate: ThirdCellDelegate? {
        didSet {
            print("third cell delegate did set")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonClicked(_ sender: AnyObject) {
        delegate?.mapButtonClicked(cell: self)
    }
}





