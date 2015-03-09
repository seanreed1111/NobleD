// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//when you open up a new playground, the lines above come in pre-loaded
//The playground is an Swift-based environment that is evaluated and executed in real time
// Let's go through each of these items in turn and use this as a casual introduction to working in playgrounds
// notice line one begins with //
// double slash tells Xcode that everything that follows it is to the end of a line is a comment meant only for the READER of the code, and the computer should ignore it.

//XCode will dutifully ignore everything from the // to the end of a line, which is signified by hitting the "return" key

////// Let's make our first comment
// My Name is Sean, and I've enrolled in this class because ...
//Let's make one more, a really long one that wraps around
// Toto, I've a feeling that we're not in Kansas anymore. Of all the gin joints in all the towns in all the world, she walks into mine.
// Until you hit return, the comment goes on forever.

////// Ok so let's talk briefly about the next statement
import UIKit
// the import directive is often found at the beginning of files. The code that makes iOS run is broken up into lots if different libraries, which are also called frameworks. Rather than make you load all the libraries that exist, Apple lets you import ONLY the ones that you need. We're not going to need imports for a while, so this line can be deleted, but you're going to see import statements in future classes as you learn to dig into all the great things that iOS lets you build. .

////// finally, let's talk about the statement on line 5 
//var str = "Hello, playground"

//this line does two things simultaneously
// 1) It declares a new variable called str, using the keyword var, and
//2) It assigns the String "Hello, playground" to the variable str

// Since we've just assigned a String to it, Swift automatically infers that we want the variable str to be of type String.

// Swift is strongly typed, unlike many other languages you might be familar with. 
//All variables must be declared before they are used, all variables must have a type specified (or be unambiguous) when assigned a value, and (mostly) all variables must have a value assigned to them at the point of declaration

// I say (mostly) all here because there are types called Optionals that Swift will assign to nil. Unless I explicitly tell you that a variable is an optional, the variable MUST be declared and defined in the same statement. We won't talk about Optionals until later this afternoon.

// let's get practice declaring and assigning more variables

var pizza = "My Pizza"
var soda = "Ginger Ale"
var pepperoniPizza = "My Pizza with Pepperoni"
var orangeSoda = "Fanta"

// notice that in all cases, we declared and defined our variables on the same line, and everything was unambiguous and we didn't get any errors from Swift. Swift knew we intended these variables to be of String type since we  we assigned Strings to them!

// Suppose we wanted to EXPLICITLY tell Swift what type we wanted something to be.
// In that case, the declaration and assignment for the variable would look different.

var pizza2 :String = "My Pizza"

// The variable declaration on the LHS of the equation is followed by a ':', and then we write the type next to the name of the variable.

// now you try. Create a variable called drink equal to the name of your favorite beverage. 
// make drink explicitly have type String.



//
