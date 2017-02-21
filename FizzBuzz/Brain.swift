//
//  Brain.swift
//  FizzBuzz
//
//  Created by Denim Mazuki on 2/21/17.
//  Copyright © 2017 Denim Mazuki. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleBy(number: Int, divisor: Int) -> Bool {
        return (number % divisor == 0)
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 15)
    }
    
    func check(number: Int) -> String {
        if (isDivisibleByFifteen(number: number)) {
            return "FizzBuzz"
        } else if (isDivisibleByThree(number: number)) {
            return "Fizz"
        } else if (isDivisibleByFive(number: number)){
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
}
