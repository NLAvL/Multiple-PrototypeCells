//
//  ViewController.swift
//  MultipleCells
//
//  Created by Arthur Loo on 12/09/16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var controllerModel : Model! = Model.loadData
    //var thirdCellProtocol : ThirdCell!
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

   
}

//MARK:- UITableViewDataSource
extension ViewController : UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! FirstCell
            cell.modelCell1 = controllerModel
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! SecondCell
            cell.modelCell2 = controllerModel
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! ThirdCell
            cell.delegate = self
            
            return cell
        }
    }
}

/*
//MARK:- UITableViewDelegate
extension ViewController : UITableViewDelegate
{
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FirstPrototype" {
            let firstVC = segue.destination as! FirstViewController
            firstVC.receivedDataFromViewController = sender as! Model
        }
    }
}
//    */


extension ViewController : ThirdCellDelegate
{
    func mapButtonClicked(cell: ThirdCell){
        print("View Controller received delegate call from ThirdCellDelegate")
    }
    
    
}



