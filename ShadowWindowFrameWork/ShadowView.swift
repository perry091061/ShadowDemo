//
//  ShadowView.swift
//  ShadowWindowFrameWork
//
//  Created by Perry Davies on 05/03/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit
import CoreGraphics

@IBDesignable
class ShadowView: UIView {
  
@IBInspectable  var cornerRadius : CGFloat = 8.0
@IBInspectable  var shadowRadius : CGFloat = 3.0
@IBInspectable  var shadowOpacity: Float = 0.8
@IBInspectable  var color = UIColor.black
    
    override func draw(_ rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        layer.shadowOffset = CGSize(width:2, height:2);
        layer.shadowColor = self.color.cgColor;
        layer.cornerRadius = self.cornerRadius
        layer.shadowRadius = self.shadowRadius
        layer.shadowOpacity = self.shadowOpacity
        
    }
    

}
