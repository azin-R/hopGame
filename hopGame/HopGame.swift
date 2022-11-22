//
//  HopGame.swift
//  hopGame
//
//  Created by azin on 11/17/22.
//

import UIKit

class HopGame {
   
    var firstNumber = 0
    
    func getNumber()-> String {
        firstNumber += 1
        
        if firstNumber % 5 == 0 {
            return "Hop"
        }
        else {
          return "\(firstNumber)"
        }
        
    }
    
    func clear()->String {
        firstNumber = 0
        return "\(firstNumber)"
    }
}

