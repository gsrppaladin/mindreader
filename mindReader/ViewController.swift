//
//  ViewController.swift
//  mindReader
//
//  Created by Sam Greenhill on 2/26/17.
//  Copyright © 2017 simplyAmazingMachines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerTxtField: UITextField!
    
    var questionNo = 2
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerTxtField.text = ""
        answerTxtField.isHidden = true
    }
    
    
    @IBAction func nextBtnPressed(_ sender: UIButton) {
        
        //think of a number                             question == 1
        //multiply it by 5                              question == 2
        //add 5                                         question == 3
        //multiply it by 2                              question == 4
        //add 2                                         question == 5
        //asking the total                              question == 6
        // user privides the total, computer guesses,   question == 7
        //after the complete if - else if structure, we need top increment question by 1
        
        
        if questionNo == 1 {
            questionLabel.text = "Think of a Number"
            answerTxtField.text = ""
            answerTxtField.isHidden = true
            sender.setTitle("Next", for: .normal)
        } else if questionNo == 2 {
            questionLabel.text = "Multiply it by 5"
        } else if questionNo == 3 {
            questionLabel.text = "Now add 5 to the total"
        } else if questionNo == 4 {
            questionLabel.text = "Multiply the answer by 2"
        } else if questionNo == 5 {
            questionLabel.text = "Now add the number by 2"
        } else if questionNo == 6 {
            questionLabel.text = "What is the total?"
            answerTxtField.isHidden = false
        } else if questionNo == 7 {
            //check if the user has provided the input, tell user what he/ she thought
            // if user hasnt provided the input, provide an alert. 
            if answerTxtField.text != "" {
                let inputNo = Int(answerTxtField.text!)!
                let answer = (((inputNo - 2) / 2) - 5 ) / 5
                questionLabel.text = "you thought of : \(answer)"
                sender.setTitle("Play", for: .normal)
            } else {
                let alert = UIAlertController(title: "Oooops", message: "Please provide total", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return
            }
            self.view.endEditing(true)
            
            
            
        }
        
        
        questionNo += 1 // questionNo = questionNo + 1
        
        if questionNo > 7 {
            questionNo = 1
        }
        
        
        
        
        
        
        
        
        
        
    }
    
    

    
    
    
}

