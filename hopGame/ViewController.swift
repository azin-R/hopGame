//
//  ViewController.swift
//  hopGame
//
//  Created by azin on 11/16/22.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    
    func entry() -> String {

        guard let firstNumber = myField.text, !firstNumber.isEmpty else {
            return "error"
        }

        var number = Int(firstNumber)!

        number += 1

        if number % 5 == 0 {
            return "Hop"
        }
        else {
            return "\(number)"
        }
        return "\(number)"
    }



    func clear()->String {
        let number = 0
        return "\(number)"

    }


    @IBAction func addButton(_ sender: Any) {

        
        myLabel.text = "\(entry())"
    }

    @IBAction func clearButton(_ sender: Any) {
        myLabel.text =  clear()
    }


}

