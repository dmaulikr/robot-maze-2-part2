//
//  CollectingDataAboutWalls.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/6/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func isFacingWall(_ robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        print("cell above robot?: \(cell.top)")
        print("cell below robot?: \(cell.bottom)")
        print("cell to left of robot?: \(cell.left)")
        print("cell to right of robot?: \(cell.right)")
        
        // You may want to paste your Part 1 implementation of isFacingWall() here
        
        return false
    }
    
    func checkWalls(_ robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls += 1
        }

        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls += 1
        }

        let isWallBottom = cell.bottom
        if isWallBottom{
            numberOfWalls += 1
        }
        let isWallLeft = cell.left
        if isWallLeft{
            numberOfWalls += 1
        }
        
        return (isWallUp, isWallRight, isWallBottom, isWallLeft, numberOfWalls)
    }
}
