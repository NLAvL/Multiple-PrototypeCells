//
//  Model.swift
//  MultipleCells
//
//  Created by Arthur Loo on 12/09/16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import Foundation


class Model
{
    
    //MARK:- Properties
    var firstVariable : String =  ""
    var secondVariable: String =  ""
    var thirdVariable: String =   ""
    var fourthVariable: String =  ""  
    
    
    //MARK:- Initialisation
    init(line1: String, line2: String, line3: String, line4: String) {
        self.firstVariable = line1
        self.secondVariable = line2
        self.thirdVariable = line3
        self.fourthVariable = line4
    }
    
    //MARK:- Dummy Data
    static let loadData =
    Model(line1: "First Cell, first label", line2: "First Cell, second label", line3: "Second Cell, first label", line4: "Second Cell, Second label")
    
}