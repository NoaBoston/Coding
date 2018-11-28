import UIKit

struct JumpScore
{
    var baseValue: Double
    var gradeOfExec: Double
    var secondHalf: Bool
    var underRotate: Bool
    var finalScore: Double
    {
        if secondHalf == true
        {
            baseValue = baseValue * 1.1
        }
        
        if underRotate == true
        {
            
        }
        
        baseValue = baseValue + gradeOfExec
        
        
        
        return 3.2
    }
}

