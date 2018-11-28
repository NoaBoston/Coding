//
//  Game.swift
//  ApplePie
//
//  Created by Noah Conroy on 10/31/18.
//  Copyright © 2018 Noah Conroy. All rights reserved.
//

import Foundation

struct Game
{
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [String]
    
    mutating func playerGuessed(letter: String)
    {
        guessedLetters.append(letter)
        if !word.contains(letter)
        {
            incorrectMovesRemaining -= 1
        }
    }
}
