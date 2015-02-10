//
//  FizzBuzz.swift
//  FizzBuzzProject
//
//  Created by Sean Reed on 2/9/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import Foundation

class FizzBuzz {
    
    func fizzBuzz(number: Int) -> String{
        var result = String()  //this constructs an empty String
        let division = (number % 3, number % 5)
        
        switch division {
        case (0,0): result = "FizzBuzz"
        case (0,_): result = "Fizz"
        case (_,0): result = "Buzz"
        default:    result = "\(number)"
        }
        return result
    }
}
