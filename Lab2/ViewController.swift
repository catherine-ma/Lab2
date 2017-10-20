//
//  ViewController.swift
//  Lab2
//
//  Created by Cathy on 10/19/17.
//  Copyright © 2017 Catherine Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var output: UILabel?
    @IBOutlet weak var leftInput: UITextField?
    @IBOutlet weak var rightInput: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // adds input in left text field to the label lowercased
    @IBAction func leftSend(_ sender: Any) {
        if let leftText = leftInput?.text {
            print(leftText)
            
            if let outputText = output?.text {
                output?.text = outputText + leftText.lowercased()
            }
        }
    }
    
    // adds input in right text field to the label uppercased
    @IBAction func rightSend(_ sender: Any) {
        if let rightText = rightInput?.text {
            print(rightText)
            if let outputText = output?.text {
                output?.text = outputText + rightText.uppercased()
            }
        }
    }
    
    // clears the label
    @IBAction func clear(_ sender: UIButton) {
        if let _ = output?.text {
            output?.text = ""
        }
    }
    
    // removes vowels from the label
    @IBAction func clearVowels(_ sender: UIButton) {
        if let outputText = output?.text {
            let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
            
            output?.text = String(outputText.characters.filter {!vowels.contains($0)})
        }
    }
}
