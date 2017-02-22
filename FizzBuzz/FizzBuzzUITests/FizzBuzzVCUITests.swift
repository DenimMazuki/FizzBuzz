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
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
    
}
