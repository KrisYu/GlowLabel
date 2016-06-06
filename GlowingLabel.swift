//
//  GlowingLabel.swift
//  GlowLabel
//
//  Created by 雪 禹 on 6/4/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit
import QuartzCore

@IBDesignable
class GlowingLabel: UILabel {

    @IBInspectable
    var blurColor :UIColor = UIColor(red: 104.0,green: 248.0,blue: 0,alpha: 0.7){
        didSet { setNeedsDisplay() }
    }
    
    @IBInspectable
    var glowSize :CGFloat = 25.0
    
    
    override func drawTextInRect(rect: CGRect) {

        let ctx = UIGraphicsGetCurrentContext()
        CGContextSetShadowWithColor(ctx, CGSizeMake(0, 0), glowSize, blurColor.CGColor)
        CGContextSetTextDrawingMode(ctx, .FillStroke)
        
        super.drawTextInRect(rect)
        
    }
    
}
