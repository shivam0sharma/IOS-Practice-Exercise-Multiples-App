//
//  ViewController.swift
//  Exercise - Multiples App
//
//  Created by Shivam Sharma on 5/12/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multipleLabel: UILabel!
    @IBOutlet weak var multipleTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    // Properties
    var multiple = 0
    var currentMultiple = 0
    let maxMultipleAmount = 10
    
    @IBAction func playButtonPressed(_ sender: UIButton!) {
        if (multipleTextField.hasText) {
            logo.isHidden = true
            multipleTextField.isHidden = true
            playButton.isHidden = true
            
            multipleLabel.isHidden = false
            addButton.isHidden = false
            
            multiple = Int(multipleTextField.text!)!
            multipleTextField.resignFirstResponder()
        }
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton!) {
        if hasReachedMaxMultiples() {
            restart()
        } else {
            multipleLabel.text = "\(currentMultiple) + \(multiple) = \(currentMultiple + multiple)"
            currentMultiple += multiple
        }
    }
    
    func restart() {
        logo.isHidden = false
        multipleTextField.isHidden = false
        playButton.isHidden = false
            
        multipleLabel.isHidden = true
        addButton.isHidden = true
            
        multiple = 0
        currentMultiple = 0
        
        multipleLabel.text = "Press Add to add!"
    }
    
    func hasReachedMaxMultiples() -> Bool {
        if ((currentMultiple/multiple)  == maxMultipleAmount) {
            return true
        } else {
            return false
        }
    }
}
