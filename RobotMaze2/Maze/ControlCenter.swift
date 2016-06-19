//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {
    
    var mazeController: MazeController!
    
    func moveComplexRobot(myRobot: ComplexRobotObject) {
        
        // You may want to paste your Part 1 implementation of moveComplexRobot() here
        // Step 1.1c
        // TODO: Call the function, isFacingWall(), and define a constant to be equal to its return value. You can use the suggested constant name below--uncomment the code and add the function call.
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)
        
        
        
        // Step 2.1c
        // TODO: Save the return value of checkWalls() to a constant called myWallInfo.
        let myWallInfo = checkWalls(myRobot)
        
        // Step 2.2a
        // Categorize the robot's current location based on the number of walls
        
        // Uncomment the line of code below
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        
        // TODO: Define the constant, isTwoWayPath
        // TODO: Define the constant, isDeadEnd
        
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)
        
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        } else if isThreeWayJunction && !robotIsBlocked {
            continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
        } else if isTwoWayPath && !robotIsBlocked{
            myRobot.move()
        } else if isTwoWayPath && robotIsBlocked{
            turnTowardClearPath(myRobot, wallInfo: myWallInfo)
        } else if isDeadEnd && !robotIsBlocked {
            myRobot.move()
        } else if isDeadEnd && robotIsBlocked{
            myRobot.rotateRight()
        }
        
        
        // Step 3.2
        // Two-way Path - else-if statements
        
        // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
        
        // TODO: If the robot encounters a two way path and there IS a wall ahead, it should turn in the direction of the clear path.
        
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
        self.moveComplexRobot(robot)
    }
    
}