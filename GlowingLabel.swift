//
//  ZYGlowingLabel.swift
//
//  Created by Dio on 11/04/2017.
//  Copyright © 2017 ZY Apps. All rights reserved.
//

import UIKit
import QuartzCore

@IBDesignable
class ZYGlowingLabel: UILabel {

	@IBInspectable
	var blurColor :UIColor = UIColor(red: 104.0,green: 248.0,blue: 0,alpha: 0.7){
		didSet { setNeedsDisplay() }
	}

	@IBInspectable
	var glowSize :CGFloat = 25.0


	override func drawText(in rect: CGRect) {

		if let ctx = UIGraphicsGetCurrentContext() {
			ctx.setShadow(offset: CGSize(width: 0, height: 0)
				, blur: self.glowSize
				, color: self.blurColor.cgColor)

			ctx.setTextDrawingMode(.fillStroke)
		}

		super.drawText(in: rect)
	}

}

