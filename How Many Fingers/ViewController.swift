//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Adrian Burcea on 02/03/2018.
//  Copyright © 2018 DOOZY SOFTWARE SOLUTIONS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var resultField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessNumber(_ sender: UIButton) {
        let diceRoll: Int = Int(arc4random_uniform(6))
        if let numberString = numberField.text {
            if let yourNumber = (Int)(numberString) {
                if yourNumber == diceRoll {
                    resultField.textColor = UIColor.green
                    resultField.text = "You've guessed"
                } else {
                    resultField.textColor = UIColor.red
                    resultField.text = "You're wrong. It was \(diceRoll)"
                }
            }
        }
    }
    // let diceRoll - arc4random_uniform(6) - generates a random number between 0 and 5
}

