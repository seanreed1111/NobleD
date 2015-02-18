// Playground - noun: a place where people can play

import UIKit

var str = "Hello, logic"

//  >, >=, <, <=, ==,!=, &&, ||, !
// using logical operators in expressions and if-then-else-if statements

// All of the above operators are used to make logical expressions in Swift. Logical expressions are statements that evaluate to type Bool, i.e., the statements are either true or false.

let left = "Left"
let right = "Right"
let one = 1
let two = 2
let three = 3

two >= one // true
two == one // false
right == "Right" // test for equality.
// to check you equality you MUST MUST use the double equal

right != left // true != means "NOT EQUAL TO"
one != two // true

// && and || are compound operators. They represent AND and OR, respectively

// For &&, ALL STATEMENTS must be true for the expression to be true

two >= one && right != "Left" //true
two >= one && right == left //false

// For ||,  If one statement is true, the entire expression is true

two >= one || right == "Left" //true
two >= one || right == left //true

//The ! operator toggles the expression to the opposite value. true -> false, and false -> true

true //true
two > one //true

!true // false
!(two > one)

!false
!(two >= one && right == left)

//best practice is to limit your use of the '!' operator whereever humanly possible, as it can be confusing to readers of your code. Try to rewrite your expressions without it. 

//for example, the expression above can be written as

two < one || right != left


// It is common to use all of these operators in if-then-else constructions

if (two < one || right != left){
    //do something
}

if right == "Right"{
    //do another thing
} else{
    // do yet another thing
}







