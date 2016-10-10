//
//  FirstViewController.swift
//  MultipleCells
//
//  Created by Arthur Loo on 26-09-16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var firstLabel : UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var receivedDataFromViewController : Model! {
        didSet {
            updateUI()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func updateUI() {
        self.firstLabel.text = receivedDataFromViewController.firstVariable
        self.secondLabel.text = receivedDataFromViewController.secondVariable
    }
   
    
}
