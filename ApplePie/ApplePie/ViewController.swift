//
//  ViewController.swift
//  ApplePie
//
//  Created by Noah Conroy on 10/31/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var listOfWords = ["apple", "banana", "crepes"]
    
    var currentGame: Game!
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newRound()
    }
    
    func newRound()
    {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
    }
    
    func updateUI()
    {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)
        let letter = letterString?.lowercased()
        if let currentGame.playerGuessed(letter: letter)
        {
            
        }
        updateUI()
    }
}

