// Playground - noun: a place where people can play

import UIKit

var str = "Hello, switch-case"

// So we talked about using IF-THEN-ELSE-IF, and it the end it was suggested that you try to limit the number of ELSE IF clauses you use. 
// But what if you are in a situation where you legitimately have a lot of different choices and you need to respond to each different option?

// In those cases, Swift offers you the Switch-Case statement
// race cars - audio
// petting zoo - animal sounds - educational app

// let's say you are building an educational app for children that shows five different animals on the screen, and has a bunch of sound files filled with the proper animal sounds. When the child touches the animal, you want to the correct sound file to play.

// Or, let's say you want to build a motorcycle racing app where you let the rider change gears from 1st to 6th, and the rider speeds up automatically when shifting to a higher the gear.

// these are both situations where you could use the Switch-case statement.

let animals = ["Bear", "Tiger", "Gorilla", "Snake", "Sea Lion"]

// pick a random Integer from 0 to 4, corresponding to the elements in the array

let randomNumber = 1

let chosenAnimal:String = animals[randomNumber]

switch chosenAnimal{
    case "Bear":     println("Play the Bear Sound...")
    case "Tiger":    println("Play the Tiger Sound...")
    case "Gorilla":  println("Play the Gorilla Sound...")
    case "Snake":    println("Play the Snake Sound...")
    case "Sea Lion": println("Play the Sea Lion Sound...")
    default:         println("Error, sound unavaible...")
}

// a few things to note:
// 1)You can see that the switch-case statement functions similarly to a bunch of IF-THEN-ELSE-IF statements
// for each value of the chosenAnimal, it searches through the list of cases and plays the correct sound. YOU MUST DO SOMETHING FOR EACH CASE. Otherwise, Swift will throw an error.

// 2) The default: tag functions exactly as the final ELSE statement would for a bunch of If THEN ELSE IF ELSE statements. The switch case statement MUST contain all possible values of the variable chosenAnimal. Since the String could be anything, you must provide a default case, even if you don't want to do anything in the default case.

// For any case where you don't want to specify a particular behaviour, you can use a break statement.

// For example, if for some reason we never want the Tiger to make a sound, we can just change the code above to the following:

switch chosenAnimal{
case "Bear":     println("Play the Bear Sound...")
case "Tiger":    break
case "Gorilla":  println("Play the Gorilla Sound...")
case "Snake":    println("Play the Snake Sound...")
case "Sea Lion": println("Play the Sea Lion Sound...")
default:         println("Error, sound unavaible...")
}

// If cases have exactly the same behavior, they can also be combined into one line, with the values that will have the same behavior separated by a comma.

// We will change our code so that nothing happens if the Bear, Tiger, or Gorilla are chosen

switch chosenAnimal{
case "Bear", "Tiger", "Gorilla":    break
case "Snake":                       println("Play the Snake Sound...")
case "Sea Lion":                    println("Play the Sea Lion Sound...")
default:                            println("Error, sound unavaible...")
}


// The variable used in the switch can also be a number.
// In that case we do NOT use quotes when enumerating each case
let gear = 5

switch gear{
    case 2: println("We are in second gear")
    case 3: println("We are in third gear")
    case 4: println("We are in fourth gear")
    case 5: println("We are in fifth gear")
    default: break
}
//"We are in fifth gear"


// Finally, we can also use ranges of values to describe the cases

switch gear{
    case 1...3: println("We are in a low gear")
    case 4:     println("We are in fourth gear")
    case 5...6: println("We are in a high gear")
    default: break
}
//"We are in a high gear"
