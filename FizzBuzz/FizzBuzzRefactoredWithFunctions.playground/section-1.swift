// FizzBuzz refactored with functions
// I think I want to do this in a project
//Or this is an exercise

//Make a label with the title FizzBuzz
// Make a text box that takes as input the upper bound number that they want to run the fizzbuzz to
//convert this text to a number
// Make a button that runs fizzBuzz to that upperbound
// print the results to the screen and to the console

// we are going write FizzBuzz a few different ways

// This is what fizzBuzz looks like as a function if 
// we use Switch - Case

func fizzBuzz(number: Int) ->String{
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

// This is the equivalent version using if-then-elseif-else

func fizzBuzz2(number: Int) ->String{
    var result = String()
    
    if number % 3 == 0 && number % 5 == 0 {
        result = "FizzBuzz"
    } else if number % 5 == 0{
        result = "Buzz"
    } else if number % 3 == 0{
        result = "Fizz"
    }
    else {
        result = "\(number)"
    }
    
    return result
}
fizzBuzz(1)
fizzBuzz(3)
fizzBuzz(5)
fizzBuzz(15)
fizzBuzz(98)
fizzBuzz(100)

// Now we can just call our fizzBuzz function inside a for..in loop

for number in 1...100{
   println("FizzBuzz of \(number) is \(fizzBuzz(number))")
}


// Now, let's move into a project and make a simple FizzBuzz app






//
//
//
// reference material

// here is the correct answer in a for .. in loop

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



// Here is the correct answer using a while loop
var number = 1
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

