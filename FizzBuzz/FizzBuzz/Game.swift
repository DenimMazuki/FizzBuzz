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
    let brain = Brain()
    
    func play(move: String) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if (result == move) {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
    
    init() {
        score = 0
    }
}
