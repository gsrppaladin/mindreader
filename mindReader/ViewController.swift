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
        
    }
    
    

    
    
    
}

