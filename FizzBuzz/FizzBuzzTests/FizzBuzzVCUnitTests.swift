//
//  FizzBuzzVCUnitTests.swift
//  FizzBuzz
//
//  Created by Denim Mazuki on 2/21/17.
//  Copyright © 2017 Denim Mazuki. All rights reserved.
//

import XCTest
@testable import FizzBuzz


class FizzBuzzVCUnitTests: XCTestCase {
    
    var fizzbuzzVC: FizzBuzzVC!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        fizzbuzzVC = storyboard.instantiateViewController(withIdentifier: "FizzBuzzVC") as! FizzBuzzVC
        UIApplication.shared.keyWindow!.rootViewController = fizzbuzzVC
        
        let _ = fizzbuzzVC.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHasAGame() {
        XCTAssertNotNil(fizzbuzzVC.game)
    }
    
    func testMove1IncrementScore() {
        fizzbuzzVC.play(move: Move.Number)
        let newScore = fizzbuzzVC.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        fizzbuzzVC.play(move: Move.Number)
        fizzbuzzVC.play(move: Move.Number)
        let newScore = fizzbuzzVC.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testMoveFizzIncrementScore() {
        fizzbuzzVC.game?.score = 2
        fizzbuzzVC.play(move: Move.Fizz)
        let newScore = fizzbuzzVC.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testMoveIncorrectFizz() {
        fizzbuzzVC.game?.score = 3
        fizzbuzzVC.play(move: Move.Fizz)
        let newScore = fizzbuzzVC.gameScore
        XCTAssertNotEqual(newScore, 4)
    }
    
    func testMoveBuzzIncrementScore() {
        fizzbuzzVC.game?.score = 4
        fizzbuzzVC.play(move: Move.Buzz)
        let newScore = fizzbuzzVC.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testMoveIncorrectBuzz() {
        fizzbuzzVC.game?.score = 3
        fizzbuzzVC.play(move: Move.Buzz)
        let newScore = fizzbuzzVC.gameScore
        XCTAssertNotEqual(newScore, 4)
    }
    
    func testMoveFizzBuzz() {
        fizzbuzzVC.game?.score = 14
        fizzbuzzVC.play(move: Move.FizzBuzz)
        let newScore = fizzbuzzVC.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testMoveIncorrectFizzBuzz() {
        fizzbuzzVC.game?.score = 1
        fizzbuzzVC.play(move: Move.FizzBuzz)
        let newScore = fizzbuzzVC.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testIncrementScoreAndResetHighScore() {
        let _ = fizzbuzzVC.game?.play(move: Move.Number)
        fizzbuzzVC.game?.resetHighScore()
        XCTAssertEqual(fizzbuzzVC.game?.highScore, 0)
    }
    
}
