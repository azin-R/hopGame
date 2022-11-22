//
//  ViewController.swift
//  hopGame
//
//  Created by azin on 11/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    let myGame = HopGame()

    
    @IBOutlet weak var myLabel: UILabel!

    @IBOutlet weak var myField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addButton(_ sender: Any) {
        
        myLabel.text = "\(myGame.getNumber())"
    }
    
    @IBAction func clearButton(_ sender: Any) {
        myLabel.text =  myGame.clear()
    }
}

