//
//  roundButton.swift
//  qwerhacks
//
//  Created by Madison Westergaard on 1/25/20.
//  Copyright © 2020 Madison Westergaard. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class roundButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
