// Playground - noun: a place where people can play

import UIKit

// Fizzbuzz
/*
Write a program that prints the numbers from 1 to 100.
    1)For multiples of three print “Fizz” instead of the number.
    2)For the multiples of five print “Buzz” instead of the number. 
    3)For numbers which are multiples of both three and five print “FizzBuzz”."
*/

// attempt print all the number
//Let's use a while loop
var number = 1
while number <= 100{
    println(number)
    number += 1
}

// Now you might think this will work
// But you'd be wrong!
    number = 1
    while number <= 100{
        if number % 3 == 0 {
            println("Fizz")
        } else if number % 5 == 0{
            println("Buzz")
        } else if number % 3 == 0 && number % 5 == 0{
            println("FizzBuzz")
        }
        else {
            println("\(number)")
        }
    number += 1
    }

    // So, why is this answer wrong?? think about what  it prints for number == 15!
    // It will print "Fizz" instead of "FizzBuzz"
    // How would you fix this?

// Spend some class discussion on the fix

//
//

// Here is the correct answer
number = 1
while number <= 100{
    if number % 3 == 0 && number % 5 == 0 {
        println("FizzBuzz")
    } else if number % 5 == 0{
        println("Buzz")
    } else if number % 3 == 0{
        println("Fizz")
    }
    else {
        println("\(number)")
    }
    number += 1
}


// super bonus solution - if time permits
// alternative solution using case and switch and tuples
    
number = 1
//  initialize a new variable of type tuple so that you don't have to use optionals

var result :(Int,Int) = (0,0)
while number <= 100 {
    result = (number % 3, number % 5)
    switch result {
        case (0,0): println("FizzBuzz")
        case (0,_): println("Fizz")
        case (_,0): println("Buzz")
        default: println(number)
    }
    number += 1
}

