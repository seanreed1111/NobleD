
//Logical operators are used to construct complex logical expressions from simpler statements
// a logical expression is always either true or false.
//
//The most common logical operators are listed below:
//
//  >	GREATER THAN
//  >=	GREATER THAN OR EQUAL TO
//  <	LESS THAN
//  <=	LESS THAN OR EQUAL TO
//  ==	IS EQUAL TO
//  !=	IS NOT EQUAL TO
//  &&	AND
//  ||	OR
//  !	NOT

// All of the above operators are used to make logical expressions in Swift. Logical expressions are statements that evaluate to type Bool, i.e., the statements are either true or false.

let left = "Left"
let right = "Right"
let one = 1
let two = 2
let three = 3

two >= one // true
two == one // false
right == "Right"



right != left
one != two


// For &&, ALL STATEMENTS must be true for the expression to be true

two >= one && right != "Left"
two >= one && right == left

// For ||,  If one statement is true, the entire expression is true

two >= one || right != "Left"
two >= one || right == left

//The ! operator toggles the expression to the opposite value. 
// In other words, true -> false, and false -> true

two > one

!(two > one)


//best practice is to limit your use of the '!' operator whereever humanly possible, as it can be confusing to readers of your code.

//for example, the expression above can be written as
!(two >= one && right == left)

two < one || right != left


// It is common to use all of these logical operators in if-then-else constructions

if (two < one || right != left){
    println("The statement is true")
}

if right == "Left"{
    println("The statement is true")
} else{
    println("The statement is false")
}







