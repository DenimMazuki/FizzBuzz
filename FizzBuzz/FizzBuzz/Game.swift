//
//  Game.swift
//  FizzBuzz
//
//  Created by Denim Mazuki on 2/21/17.
//  Copyright © 2017 Denim Mazuki. All rights reserved.
//

import Foundation

class Game {
    var score: Int
    var highScore: Int
    let brain = Brain()
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if (result == move) {
            score += 1
            checkAndUpdateHighScore()
            return (true, score)
        } else {
            checkAndUpdateHighScore()
            return (false, score)
        }
    }
    
    func checkAndUpdateHighScore() {
        if (score > highScore) {
            highScore = score
        }
    }
    
    func reset() {
        score = 0
    }
    
    func resetHighScore() {
        highScore = 0
    }
    
    
    
    init() {
        score = 0
        highScore = 0
    }
}
