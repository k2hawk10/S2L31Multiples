//
//  ViewController.swift
//  S2L31Multiples
//
//  Created by Margaret Shih on 4/14/16.
//  Copyright © 2016 Margaret Shih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//Define Properties for sumNum, thisis the post added number
    var prevSumNum = 0
    var sumNum = 0
    var enterTxtInt = 0
    
//Outlet - Assign Var
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var enterTxt: UITextField!
    @IBOutlet weak var calcTxt: UILabel!
    
/*-- Action
 When the add button is pressed, calcTxt should add numbers
     --*/
    @IBAction func addBtnAction(sender: UIButton) {
        if enterTxt.text != nil && enterTxt.text != "" {
            enterTxtInt = Int(enterTxt.text!)!
            sumNum = enterTxtInt + prevSumNum
            
            calcTxt.text = "\(prevSumNum) + \(enterTxtInt) = \(sumNum)"
            
            prevSumNum = sumNum
            
        }
        
    }
}