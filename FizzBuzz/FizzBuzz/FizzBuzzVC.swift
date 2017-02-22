//
//  FizzBuzzVC.swift
//  FizzBuzz
//
//  Created by Denim Mazuki on 2/21/17.
//  Copyright © 2017 Denim Mazuki. All rights reserved.
//

import UIKit

class FizzBuzzVC: UIViewController {
    
    var game: Game?
    
    @IBOutlet weak var numberButton: UIButton!
    
    var gameScore: Int? {
        didSet {
            guard let checkedGameScore = gameScore else {
                print("Game score equals nil")
                return
            }
            
            numberButton.setTitle("\(checkedGameScore)", for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func numberButtonTapped(_ sender: UIButton) {
        guard let unwrappedScore = gameScore else {
            print("Game Score is nil")
            return
        }
        
        let nextScore = unwrappedScore + 1
        play(move: "\(nextScore)")
    }

}
