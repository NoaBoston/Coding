struct Jump
{
    // Sets name and base value for a jump, all jumps will be stored in allMoves, waiting to be called
    let name: String
    let baseValue: Double
    
    
    // Called as a method, this does the math to find the score for a move
    func scoring(gradeOfExec: [Double], secondHalf: Bool, underRotate: Bool, fall: Bool) -> Double
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
        // runningScore += gradeOfExec
        
        return runningScore
    }
    
}

struct allMoves
{
    var tripleLutz = Jump(name: "Triple Lutz", baseValue: 14)
}

// allMoves().tripleLutz.scoring(gradeOfExec: 3.0, secondHalf: true, underRotate: false, fall: false)






