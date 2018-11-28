//
//  Logic.swift
//  SkatingScore
//
//  Created by Noah Conroy on 9/19/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import Foundation

struct Jump
{
    let baseValue: Double
    
    
    // Called as a method, this does the math to find the score for a move
    func scoring(gradeOfExec: Double, secondHalf: Bool, underRotate: Bool, fall: Bool) -> Double
    {
        var runningScore: Double = baseValue
        
        // Provides ten percent boost for second half jumps
        if secondHalf == true
        {
            runningScore *= 1.1
        }
        
        // Provides seven percent cut for under rotation
        // Fatal under rotation should simply go to the next lowest jump
        if underRotate == true
        {
            runningScore *= 0.7
        }
        
        // Takes off a single point for falling
        if fall == true
        {
            runningScore -= 1
        }
        
        // May need to create an averaging GOE function later but assumes input for now
        runningScore += gradeOfExec
        
        return runningScore
    }
    
}

class HoldingJumps
{
    let toeLoop = [Jump(baseValue: 0.0), Jump(baseValue: 0.4), Jump(baseValue: 1.3), Jump(baseValue: 4.3), Jump(baseValue: 10.3)]
    
    let salchow = [Jump(baseValue: 0.0), Jump(baseValue: 0.4), Jump(baseValue: 1.3), Jump(baseValue: 4.4), Jump(baseValue: 10.5)]
    
    let loop = [Jump(baseValue: 0.0), Jump(baseValue: 0.5), Jump(baseValue: 1.8), Jump(baseValue: 5.1), Jump(baseValue: 12.0)]
    
    let flip = [Jump(baseValue: 0.0), Jump(baseValue: 0.5), Jump(baseValue: 1.9), Jump(baseValue: 5.3), Jump(baseValue: 12.3)]
    
    let lutz = [Jump(baseValue: 0.0), Jump(baseValue: 0.6), Jump(baseValue: 2.1), Jump(baseValue: 6.0), Jump(baseValue: 13.6)]
    
    let axel = [Jump(baseValue: 0.0), Jump(baseValue: 1.1), Jump(baseValue: 3.3), Jump(baseValue: 8.5), Jump(baseValue: 15.0)]
}
