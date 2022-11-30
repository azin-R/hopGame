//
//  ViewController.swift
//  hopGame
//
//  Created by azin on 11/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    var game = HopGame()
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerLabel()
    }
    
    func cornerLabel() {
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 135
    }
    



    @IBAction func addButton(_ sender: Any) {

        guard let hopNumberString = myField.text else {
            return
        }
        guard let hopNumber = Int(hopNumberString) else {
            return
        }
        game.goal = hopNumber
        myLabel.text = game.nextValue()
        
    }

    @IBAction func clearButton(_ sender: Any) {
        myLabel.text = game.clear()
    }
}

