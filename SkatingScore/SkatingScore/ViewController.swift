//
//  ViewController.swift
//  SkatingScore
//
//  Created by Noah Conroy on 9/19/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    // MARK: Variables
    let allJumps = HoldingJumps()
    var finalScore = 0.0
    var averageGOE: Double
    {
        var stepperArray = [UIStepper]()
        stepperArray.append(stepOne)
        stepperArray.append(stepTwo)
        stepperArray.append(stepThree)
        stepperArray.append(stepFour)
        stepperArray.append(stepFive)
        stepperArray.append(stepSix)
        stepperArray.append(stepSeven)
        
        var highest = stepperArray[0].value
        var lowest = stepperArray[0].value
        var runningTotal: Double = 0
        
        for step in stepperArray
        {
            runningTotal += step.value
            
            if (step.value > highest)
            {
                highest = step.value
            }
            else if step.value < lowest
            {
                lowest = step.value
            }
            
        }
        
        runningTotal -= highest
        runningTotal -= lowest
        
        print(runningTotal / 5)
        return runningTotal / 5
    }
    
    

    // MARK: Labels
    @IBOutlet weak var goeOne: UILabel!
    @IBOutlet weak var goeTwo: UILabel!
    @IBOutlet weak var goeThree: UILabel!
    @IBOutlet weak var goeFour: UILabel!
    @IBOutlet weak var goeFive: UILabel!
    @IBOutlet weak var goeSix: UILabel!
    @IBOutlet weak var goeSeven: UILabel!
    @IBOutlet weak var rotateLabel: UILabel!
    @IBOutlet weak var score: UILabel!
    
    
    
    // MARK: Deciders
    @IBOutlet weak var rotateStep: UIStepper!
    @IBOutlet weak var fallSwitch: UISwitch!
    @IBOutlet weak var underSwitch: UISwitch!
    @IBOutlet weak var secondSwitch: UISwitch!
    
    // MARK: Steppers
    @IBOutlet weak var stepOne: UIStepper!
    @IBOutlet weak var stepTwo: UIStepper!
    @IBOutlet weak var stepThree: UIStepper!
    @IBOutlet weak var stepFour: UIStepper!
    @IBOutlet weak var stepFive: UIStepper!
    @IBOutlet weak var stepSix: UIStepper!
    @IBOutlet weak var stepSeven: UIStepper!
    
    @IBAction func actionOne(_ sender: UIStepper)
    {
        goeOne.text = "GOE: \(round(stepOne.value * 100) / 100)"
        goeTwo.text = "GOE: \(round(stepTwo.value * 100) / 100)"
        goeThree.text = "GOE: \(round(stepThree.value * 100) / 100)"
        goeFour.text = "GOE: \(round(stepFour.value * 100) / 100)"
        goeFive.text = "GOE: \(round(stepFive.value * 100) / 100)"
        goeSix.text = "GOE: \(round(stepSix.value * 100) / 100)"
        goeSeven.text = "GOE: \(round(stepSeven.value * 100) / 100)"
        rotateLabel.text = "Rotate: \(Int(rotateStep.value))"
    }
    @IBAction func tooLoopAction(_ sender: UIButton)
    {
        finalScore = allJumps.toeLoop[Int(rotateStep.value)].scoring(gradeOfExec: averageGOE, secondHalf: secondSwitch.isOn, underRotate: underSwitch.isOn, fall: fallSwitch.isOn)
        finalScore = round(finalScore * 100) / 100
        
        score.text = String(finalScore)
    }
    
    @IBAction func salchowAction(_ sender: UIButton)
    {
        finalScore = allJumps.salchow[Int(rotateStep.value)].scoring(gradeOfExec: averageGOE, secondHalf: secondSwitch.isOn, underRotate: underSwitch.isOn, fall: fallSwitch.isOn)
        finalScore = round(finalScore * 100) / 100
        
        score.text = String(finalScore)
    }
    @IBAction func loopAction(_ sender: UIButton)
    {
        finalScore = allJumps.loop[Int(rotateStep.value)].scoring(gradeOfExec: averageGOE, secondHalf: secondSwitch.isOn, underRotate: underSwitch.isOn, fall: fallSwitch.isOn)
        finalScore = round(finalScore * 100) / 100
        
        score.text = String(finalScore)
    }
    @IBAction func flipAction(_ sender: UIButton)
    {
        finalScore = allJumps.flip[Int(rotateStep.value)].scoring(gradeOfExec: averageGOE, secondHalf: secondSwitch.isOn, underRotate: underSwitch.isOn, fall: fallSwitch.isOn)
        finalScore = round(finalScore * 100) / 100
        
        score.text = String(finalScore)
    }
    @IBAction func lutzAction(_ sender: UIButton)
    {
        finalScore = allJumps.lutz[Int(rotateStep.value)].scoring(gradeOfExec: averageGOE, secondHalf: secondSwitch.isOn, underRotate: underSwitch.isOn, fall: fallSwitch.isOn)
        finalScore = round(finalScore * 100) / 100
        
        score.text = String(finalScore)
    }
    @IBAction func axelAction(_ sender: UIButton)
    {
        finalScore = allJumps.axel[Int(rotateStep.value)].scoring(gradeOfExec: averageGOE, secondHalf: secondSwitch.isOn, underRotate: underSwitch.isOn, fall: fallSwitch.isOn)
        finalScore = round(finalScore * 100) / 100
        
        score.text = String(finalScore)
    }
    
}
