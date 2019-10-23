//
//  PinView.swift
//  Assembler
//
//  Created by LucasD on 13/08/2019.
//  Copyright © 2019 dlucasss. All rights reserved.
//

import UIKit

class PinView: UIView {
    
    var primaryColor = UIColor.gray {
        didSet{
            self.layer.borderColor = primaryColor.cgColor
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    func setFillment(value: Bool) {
        if value {
            self.backgroundColor = primaryColor
        } else {
            self.backgroundColor = UIColor.clear
        }
    }
    
    private func setupUI(){
        self.layer.borderWidth = 1.5
        setFillment(value: false)
    }
    
    override func layoutSubviews()  {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.size.height / 2.0
    }

}
