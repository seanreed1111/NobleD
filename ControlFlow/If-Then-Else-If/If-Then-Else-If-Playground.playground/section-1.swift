 // Playground - noun: a place where people can play

import UIKit

var str = "Hello, conditionals"

 // Overview
 
 //A lot of what we're doing when we program if testing whether a condition is true or false and deciding whether or not to perform a task based on the outcome of that test.
 
 // This is one way that you control the flow of how the code is executed as a programmer.
 
 //For example, banking and many other iPhone apps require you to enter a login and password to validate who you are before you can access their system.
 //If you enter the correct information, you are  connected through to your account. If not, a number of different things might happen, e.g. you might be asked to try again, you might be offered a "forgot password?" hint, or you might even be locked out of your account altogether. 
 
 // All of these actions are performed w/i conditional statements, also know as IF-THEN-ELSE blocks.
 
 // The simpliest type of conditional just has an IF statement
 
 var username = "Gilda"
 
 if username == "Gilda"{
    println("Welcome, Gilda")
 }
 // "Welcome, Gilda"
 
 //If the username != "Gilda", absolutely nothing will happen
 
 username = "Bill"
 
 if username == "Gilda"{
    println("Welcome, Gilda")
 }
// nothing is printed since the condition username == "Gilda" is false
 
 // Note: In Swift, we MUST put the statements that we want to perform if a conditional is successful inside curly braces {}
 
 // We can use any kind of logical operators we like inside our IF statement
 // However, it is best to try to keep it as simple as possible to allow readers of our code to easily follow what we are doing
 
 if username == "Gilda" || username == "Bill"{
    println("Live From New York It's Saturday Night")
 }
 // "Live From New York It's Saturday Night"
 
 // Sometimes if our IF statement is NOT true, we want to do something else. 
 // We can combine an ELSE statement with our IF Statement to do this.
 let password = "123456"
 
 if username == "Gilda" && password == "ABCDEF"{
    println("Hello, Gilda. Your password has been accepted.")
 } else {
    println("Sorry, Gilda, your password is incorrect. Please try again.")
 }
 // "Sorry, Gilda, your password is incorrect. Please try again."
 
 // Since password == "ABCDEF" is false, the entire conditional is false. Control goes to the ELSE clause, so the computer prints the "Sorry, Gilda, ..." line.
 
 // If you choose to include an ELSE clause, it ALWAYS COMES LAST, and serves as a catch-all
 
 // There is a shorthand way of writing the same IF-ELSE construction. This is known as a ternary.
 
 username == "Gilda" && password == "ABCDEF" ? println("Password Accepted") : println("Password Incorrect")
 
 // "Password Incorrect"
 
 // The conditional and the statements executed if it is true or false are all written on one line. The computer will execute whatever is between the ? and the : if the conditional is true and whatever is after the : if the conditional is false.
 
 // ONLY USE TERNARIES for SHORT SIMPLE STATEMENTS. THEY CAN MAKE YOUR CODE HARD TO READ
 
 
 // IF-ELSE clauses can handle two possible states of the world. 
 // What if we have three choices?
 // For example, what if we are building an iPhone dating app that lets us rate our
 // potential matches with three choices: YES, NO, and MAYBE?
 
 // In this case, we'd use an IF-THEN-ELSE IF construction
 
 var dateable = "MAYBE"
 
 if dateable == "YES"{
    println("This profile has been placed into the YES pile.")
 } else if dateable == "NO"{
    println("This profile has been placed into the NO pile.")
 } else if dateable == "MAYBE"{
    println("This profile has been placed into the MAYBE pile.")
 }
 // "This profile has been placed into the MAYBE pile."
 
 // In any conditional, an ELSE clause is not specifically required. If we know that our variable can only be "YES", "NO", or "MAYBE", we don't need it here.

 
 //However, If you choose to include an ELSE clause, it MUST ALWAYS COME LAST. The ELSE clause serves as a catch-all for cases not included in the statements above it.
 //

// Suppose that you wanted to warn the user that they've entered an invalid answer for dateable. In that case, you'd want an IF-THEN-ELSEIF - ELSE conditional.
 
 // let's change the value of dateable so it will fallthrough w/o an ELSE clause.
 
 dateable = "UNKNOWN"
 
 if dateable == "YES"{
    println("This profile has been placed into the YES pile.")
 } else if dateable == "NO"{
    println("This profile has been placed into the NO pile.")
 } else if dateable == "MAYBE"{
    println("This profile has been placed into the MAYBE pile.")
 } else {
    println("Error! You must choose \"YES\", \"NO\", or \"MAYBE\"")
 }

 // "Error! You must choose "YES", "NO", or "MAYBE"
 
 // In theory we can have as many else if clauses as we need to cover all of our cases. In practice, though, try to limit yourself to two "ELSE IF" clauses and maybe an "ELSE" at the end if at all possible.
 
 
 
 
 