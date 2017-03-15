//
//  SimpleGrid.swift
//  SimpleGridBySKShapeNode
//
//  Created by 駱光璽 on 2017/3/15.
//  Copyright © 2017年 Avocado. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class Grid {
    var gridPath = CGMutablePath()
    var x:CGFloat
    var y:CGFloat
    var maxX:CGFloat
    var maxY:CGFloat
    var columnGap:CGFloat
    var rowGap:CGFloat
    var horizontalCenterLineArray:[CGPoint]
    var verticalCenterLineArray:[CGPoint]
    
    init (center: CGPoint, border: CGPoint, columnGap: CGFloat, rowGap: CGFloat){
        self.x = center.x
        self.y = center.y
        self.maxX = border.x
        self.maxY = border.y
        self.columnGap = columnGap
        self.rowGap = rowGap
        self.horizontalCenterLineArray = [CGPoint(x: 0, y: y), CGPoint(x: maxX , y: y )]
        self.verticalCenterLineArray = [CGPoint(x: x, y: 0), CGPoint(x: x ,y: maxY )]
    }
    
    func draw(lineWidth:CGFloat,strokeColor:SKColor) -> SKShapeNode {
        gridPath.addLines(between: horizontalCenterLineArray)
        gridPath.addLines(between: verticalCenterLineArray)
        
        var horizontalGapLineArray = [CGPoint]()
        var verticalGapLineArray = [CGPoint]()
        
        var decreaseGapX = self.x
        var increaseGapX = self.x
        
        var decreaseGapY = self.y
        var increaseGapY = self.y
        
        if columnGap != 0 {
            while decreaseGapX > 0 {
                decreaseGapX = decreaseGapX - columnGap
                verticalGapLineArray = [CGPoint(x: decreaseGapX, y: 0 ), CGPoint(x: decreaseGapX , y: maxY )]
                gridPath.addLines(between: verticalGapLineArray)
            }
            while increaseGapX < maxX {
                increaseGapX = increaseGapX + columnGap
                verticalGapLineArray = [CGPoint(x: increaseGapX, y: 0 ), CGPoint(x: increaseGapX , y: maxY )]
                gridPath.addLines(between: verticalGapLineArray)
            }
        }
        
        if rowGap != 0 {
            while decreaseGapY > 0 {
                decreaseGapY = decreaseGapY - rowGap
                horizontalGapLineArray = [CGPoint(x: 0, y: decreaseGapY ), CGPoint(x: maxX , y: decreaseGapY )]
                gridPath.addLines(between: horizontalGapLineArray)
            }
            while increaseGapY < maxY {
                increaseGapY = increaseGapY + rowGap
                horizontalGapLineArray = [CGPoint(x: 0, y: increaseGapY ), CGPoint(x: maxX , y: increaseGapY )]
                gridPath.addLines(between: horizontalGapLineArray)
            }
            
        }
        
        let line = SKShapeNode(path: gridPath)
        line.lineWidth = lineWidth
        line.strokeColor = strokeColor
        return line
    }
}

