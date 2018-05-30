
//
//  CALayer.swift
//  Fashion
//
//  Created by AlphaZ on 2018/5/24.
//  Copyright © 2018年 AlphaZ. All rights reserved.
//

import UIKit

// 简书：链式编程
// MARK: - Set Shadow and Corner of CALayer
extension CALayer {

    func cornerAndShadow(cornerRadius:CGFloat,shadowColor:UIColor ,shadowOffset:CGSize ,shadowOpacity:Float ,shadowRadius:CGFloat) {

        self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.01).cgColor
        self.shadowColor = shadowColor.cgColor
        self.shadowOffset = shadowOffset
        self.masksToBounds = false
        self.shadowOpacity = opacity
        self.shadowRadius = shadowRadius

        let cornerLayer = CALayer()
        cornerLayer.frame = CGRect(x: self.frame.origin.x - cornerRadius, y: self.frame.origin.y - cornerRadius, width: self.frame.size.width - 2 * cornerRadius, height: self.frame.size.height - 2 * cornerRadius)
        cornerLayer.cornerRadius = cornerRadius
        cornerLayer.masksToBounds = true
        cornerLayer.shouldRasterize = true
        cornerLayer.rasterizationScale = UIScreen.main.scale
        self.addSublayer(cornerLayer)

    }


    func corner(radius:CGFloat) {

        self.masksToBounds = true
        self.cornerRadius = radius
        self.shouldRasterize = true
        self.rasterizationScale = UIScreen.main.scale

    }

    func shadow(color:UIColor ,offset:CGSize ,opacity:Float ,radius:CGFloat) {

        self.masksToBounds = false
        self.shadowColor = color.cgColor
        self.shadowOffset = offset
        self.shadowOpacity = opacity
        self.shadowRadius = radius

    }

}

//shadowLayer.shadowColor = color.cgColor //阴影颜色
//shadowLayer.shadowOffset = offset//阴影偏移，默认(0, -3),(0,0)垂直向下，这个跟shadowRadius配合使用；
//shadowLayer.shadowOpacity = opacity //阴影透明度，默认0
//shadowLayer.shadowRadius = radius //阴影半径，默认3

