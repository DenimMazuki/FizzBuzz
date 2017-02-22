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
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
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

    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: Move.Number)
        case fizzButton:
            play(move: Move.Fizz)
        case buzzButton:
            play(move: Move.Buzz)
        case fizzBuzzButton:
            play(move: Move.FizzBuzz)
        default:
            print("Invalid Selection")
        }
    }
    
    

}
