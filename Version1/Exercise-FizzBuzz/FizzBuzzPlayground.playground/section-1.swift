// Playground - noun: a place where people can play

// Fizzbuzz
/*
Write a program that prints the numbers from 1 to 100.
    1)For multiples of three print “Fizz” instead of the number.
    2)For the multiples of five print “Buzz” instead of the number. 
    3)For numbers which are multiples of both three and five print “FizzBuzz”."
*/
//
//


// Here is INCORRECT answer using a for in loop
for num in 1...100{
    if num % 3 == 0  {
        println("Fizz")
    } else if num % 5 == 0{
        println("Buzz")
    } else if num % 3 == 0 && num % 5 == 0{
        println("FizzBuzz")
    }
    else {
        println("\(num)")
    }
}

// So, why is this answer wrong?? think about what it prints for number == 15!
// It will print "Fizz" instead of "FizzBuzz"
// How would you fix this?

// Spend some class discussion on the fix



// Here is the correct answer using a for in loop
for num in 1...100{
    if num % 3 == 0 && num % 5 == 0 {
        println("FizzBuzz")
    } else if num % 5 == 0{
        println("Buzz")
    } else if num % 3 == 0{
        println("Fizz")
    }
    else {
        println("\(num)")
    }
}


/////////////////////////////////////
//Let's use a while loop
////////////////////////////////////
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

// So, why is this answer wrong?? think about what it prints for number == 15!
// It will print "Fizz" instead of "FizzBuzz"
// How would you fix this?

// Spend some class discussion on the fix

// Here is the correct answer using a while loop
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



//
// alternative solution using Switch..Case and tuples
    
//
//  initialize a new variable of type tuple so that you don't have to use optionals
number = 1
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

