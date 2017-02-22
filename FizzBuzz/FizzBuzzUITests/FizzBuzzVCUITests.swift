//
//  FizzBuzzVCUITests.swift
//  FizzBuzz
//
//  Created by Denim Mazuki on 2/21/17.
//  Copyright © 2017 Denim Mazuki. All rights reserved.
//

import XCTest

class FizzBuzzVCUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    
    override func setUp() {
        super.setUp()

        continueAfterFailure = false

        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementScoreOnce() {
        
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonIncrementScoreTwice() {
        
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testFizzButtonTappedOnce() {
        
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        fizzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    func testFizzButtonTappedCorrectly() {
        
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testBuzzButtonTappedOnce() {
        
        let numberButton = app.buttons["numberButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        buzzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    func testBuzzButtonTappedCorrectly() {
        
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testFizzBuzzButtonTappedOnce() {

        let fbButton = app.buttons["fizzBuzzButton"]
        
        fbButton.tap()
        let newScore = app.buttons["numberButton"].label
        XCTAssertEqual(newScore, "0")
    }
    
    func testFizzBuzzButtonCorrectly() {
        
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzBuzzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
        
    }
    
    func testPlayAgainButtonTapped() {
        
        let paButton = app.buttons["paButton"]
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        paButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    func testDisableButton() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testPlayAgainButtonAfterDisable() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let paButton = app.buttons["paButton"]
        
        numberButton.tap()
        fizzButton.tap()
        paButton.tap()
        numberButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testUpdateHighScoreAfterIncrementingOnce() {
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        
        let highScoreLabel = app.staticTexts["highScoreLabel"]
        XCTAssertEqual(highScoreLabel.label, "1")
    }
    
    func testUpdateHighScoreShouldNotUpdateAfterHigherScore() {
        let numberButton = app.buttons["numberButton"]
        let paButton = app.buttons["paButton"]
        
        numberButton.tap()
        numberButton.tap()
        paButton.tap()
        numberButton.tap()
        
        let highScoreLabel = app.staticTexts["highScoreLabel"]
        XCTAssertEqual(highScoreLabel.label, "2")
    }
    
    func testResetHighScoreShouldResetHighScore() {
        let numberButton = app.buttons["numberButton"]
        let resetButton = app.buttons["resetButton"]
        
        numberButton.tap()
        resetButton.tap()
        
        let highScoreLabel = app.staticTexts["highScoreLabel"]
        XCTAssertEqual(highScoreLabel.label, "0")
    }
    
    func testResetButtonShouldResetCurrentScore() {
        let numberButton = app.buttons["numberButton"]
        let resetButton = app.buttons["resetButton"]
        
        numberButton.tap()
        resetButton.tap()
        
        let currentScore = numberButton.label
        XCTAssertEqual(currentScore, "0")
    }
}
