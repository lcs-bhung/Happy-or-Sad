//
//  ViewController.swift
//  Happy or Sad
//  Bruh moment
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
        //Make sure the imput is not too long
        if textFieldAsString.count > 255 {
            result.text = "please enter less characters"
            return
        }
       
        //make variable happy count and sad count and declare what are happy and sad emojis
    
        var happyCount = 0
        var sadCount = 0
        let happyEmojis = "😀🙂😄😊"
        let sadEmojis = "☹️🙁😕😔"
        //Incpect each character for happy and sad
        
        for character in textFieldAsString {
            if happyEmojis.contains(character){
                happyCount += 1
            }
            if sadEmojis.contains(character){
                sadCount += 1
            }
        }
        
        //Determining if there are more happy or sad
        if happyCount == sadCount && happyCount > 1 && sadCount > 1 {
            result.text = "Unsure"
        } else if happyCount == 0 && sadCount == 0 {
            result.text = "None"
        } else if happyCount > sadCount {
            result.text = "Happy"
        } else if happyCount < sadCount {
            result.text = "Sad"
        }
    }
    }




