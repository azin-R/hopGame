//
//  HopGame.swift
//  hopGame
//
//  Created by azin on 11/17/22.
//

import UIKit

class GradientView: UIView {
    
    @IBInspectable var topColor:UIColor = .lightGray
     @IBInspectable var bottomColor:UIColor = .darkGray
     
     var startPointX: CGFloat = 0
     var startPointY: CGFloat = 0
     var endPointX: CGFloat = 1
     var endPointY: CGFloat = 1
     
     override func layoutSubviews() {
         let gradientLayar = CAGradientLayer()
         gradientLayar.colors = [topColor.cgColor, bottomColor.cgColor]
         gradientLayar.startPoint = CGPoint(x: startPointX, y: startPointY)
         gradientLayar.endPoint = CGPoint(x: endPointX, y: endPointY)
         gradientLayar.frame = self.bounds
         self.layer.insertSublayer(gradientLayar, at: 0)
     }

}
