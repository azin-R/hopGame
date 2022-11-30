//
//  HopGame.swift
//  hopGame
//
//  Created by azin on 11/30/22.
//

import UIKit

class HopGame {
    
    var currentNumber = 0
    var goal = 5
    
    func incrementNumber() {
        currentNumber += 1
    }
    
    var isGoal: Bool {
        return currentNumber % goal == 0
    }
    
    var currentValue: String {
        if isGoal {
            return "Hop"
        }
        else {
            return "\(currentNumber)"
        }
    }
    
    func nextValue()->String {
        incrementNumber()
        return currentValue
    }
    
    func clear()->String {
        currentNumber = 0
        return "\(currentNumber)"
    }
}
