//
//  UIViewExtension.swift
//  Assembler
//
//  Created by LucasD on 17/02/2019.
//  Copyright © 2019 dlucasss. All rights reserved.
//

import UIKit

extension UIView {
    
    public func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
        
        self.layer.add(animation, forKey: "position")
    }
}
