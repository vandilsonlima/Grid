//
//  GridView.swift
//  GridTest
//
//  Created by Vandilson Lima on 05/11/17.
//  Copyright © 2017 Vandilson Lima. All rights reserved.
//

import UIKit

class GridView: UIView {

    var color = UIColor.blue {
        didSet {
            setNeedsDisplay()
        }
    }
    var size = CGSize(width: 16, height: 16) {
        didSet {
            setNeedsDisplay()
        }
    }

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {return}
        context.clear(rect)

        context.setFillColor(UIColor.clear.cgColor)
        context.fill(rect)

        context.setStrokeColor(color.cgColor)

        for x in stride(from: 0, through: Int(rect.width), by: Int(size.width)) {
            context.move(to: CGPoint(x: x, y: 0))
            context.addLine(to: CGPoint(x: x, y: Int(rect.height)))
        }

        for y in stride(from: 0, through: Int(rect.height), by: Int(size.height)) {
            context.move(to: CGPoint(x: 0, y: y))
            context.addLine(to: CGPoint(x: Int(rect.width), y: y))
        }
        context.strokePath()
    }
}
