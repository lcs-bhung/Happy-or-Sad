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
        //Get user imputs
        let textFieldAsString = UITextField.text
        
        //Use guard
        guard textFieldAsString != nil  else{
            result.text = "Please enter a text"
            return
        }
        
        
    }


}

