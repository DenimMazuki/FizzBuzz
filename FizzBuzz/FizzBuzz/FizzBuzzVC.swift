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
    
    @IBOutlet weak var highScoreLabel: UILabel!
    
    
    var highScore: Int? {
        didSet {
            guard let checkedHighScore = highScore else {
                print ("High score equals nil")
                return
            }
            
            highScoreLabel.text = "\(checkedHighScore)"
        }
    }
    
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
    
    func toggleButtons() {
        numberButton.isEnabled = !(numberButton.isEnabled)
        fizzButton.isEnabled = !(fizzButton.isEnabled)
        buzzButton.isEnabled = !(buzzButton.isEnabled)
        fizzBuzzButton.isEnabled = !(fizzBuzzButton.isEnabled)
    }

    func checkGame(right: Bool) {
        // If the response is not valid, disable the buttons
        if (!right) {
            toggleButtons()
        }
    }
    
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        
        // Check if game is still valid
        checkGame(right: response.right)
        
        highScore = unwrappedGame.highScore
        gameScore = response.score
    }
    
    func reset() {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        
        toggleButtons()
        unwrappedGame.reset()
    }
    
    // Execute actions depending on button tapped
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
    // Resets game when tapped
    @IBAction func playAgainButtonTapped(_ sender: UIButton) {
        reset()
        gameScore = 0
    }
    

}
