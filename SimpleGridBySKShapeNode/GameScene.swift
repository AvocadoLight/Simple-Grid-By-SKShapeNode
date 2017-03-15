//
//  GameScene.swift
//  SimpleGridBySKShapeNode
//
//  Created by 駱光璽 on 2017/3/15.
//  Copyright © 2017年 Avocado. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    override func didMove(to view: SKView) {
        
        //定義中央格線位置與邊界
        let center = CGPoint(x: frame.midX, y: frame.maxY)
        let borderline = CGPoint(x: frame.maxX, y: frame.maxY)
        
        //建立格線
        let grid = Grid(center: center, border: borderline, columnGap: 100.0, rowGap: 100.0)
        addChild(grid.draw(lineWidth: 1.0, strokeColor: .white))
        
    }
}

