//
//  ViewController.swift
//  Happy or Sad
//
//  Created by Branton Hung on 2019-11-18.
//  Copyright © 2019 Branton Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Mark: Properties
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var analyse: UIButton!
    @IBOutlet weak var result: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Analyse
    @IBAction func analyse(_ sender: Any) {
      
        //Use guard if ther is no imput
        guard let textFieldAsString = textField.text, textFieldAsString != "" else{
            result.text = "Please enter text"
            return
        }
       
        //make variable happy count and sad count
        
        var happyCount = 0
        var sadCount = 0
        
        //Incpect each character for happy and sad
        
        //Determining if there are more happy or sad
        if happyCount == sadCount {
            result.text = "the same"
        } else if happyCount == 0 && sadCount == 0 {
            result.text = "There are no happy or sad emojis"
        } else if happyCount > sadCount {
            result.text = "Happy"
        } else if happyCount < sadCount {
            result.text = "Sad"
        }
    } 
    }




