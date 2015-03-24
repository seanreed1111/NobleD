// Playground - noun: a place where people can play

var str = "Hello, loops"

// The other way to change the flow of how a program operates is called a loop

//loops do a set number of statements multiple times. The statements that we want to repeat in enclosed in braces

// There are a few types of loops in Swift, but in reality the one you will almost always use is the 
//For - In loop.

// So that is where we will concentrate our time.


// The For-In loop in reality has two different flavors
    
//The first flavor is for iterating over ranges, for example 1...10
// The second flavor is for iterating over all of the items in a collection, for example an array or a dictionary. 
// We'll take each of these in turn


//let's talk about loops in Swift
// we used the example of 1...10 /this is called a closed range


// it means going from 1 to 10, inclusive, by ones
//1,2,3,4,5,6,7,8,9,10

// so if we want to repeat something ten times, we could write it as follows:

for index in 1...10 {
    //do something
}

for loop in 1...10 {
    //do something
}

// we ALWAYS enclose the part that we want to repeat in curly braces.

// a few words about the variable index
//the variable index is of type Int that goes from 1,2,3, etc up to ten as the loop gets executed.
// The variable name "index" is completely arbitrary, and programmers typically change it to whatever valid variable name best suits the problem they are working on.

// Swift also has the concept of half open ranges, 1..<10
// this means 1 to 10, exclusive of 10
// 1,2,3,4,5,6,7,8,9

//in a loop, that would look like this

for index in 1..<10 {
    //do something
}


// Suppose I am writing an app depicting the final battle of a hero with a hated foe. 
//Let's say I have a catchphrase that want to repeat exactly eight times while I fight him.

// That is a perfect situation for the use of a For Loop!

for loopCounter in 1...8{
    println("Hello. My name is Inigo Montoya. You killed my father. Prepare to die.")
}

// the function println() gets executed 8 times, so the String is printed eight times.

// HOW TO Print the value of the variable loopCounter as a String (inside of the for loop.)

// FOLLOW THESE STEPS
// 1) enclose variable name in parentheses --> (loopCounter)
// 2) stick a backslash in front --> \(loopCounter)

// Now, we can stick \(loopCounter) inside a pair of double quotes like any other text.
// This is called string interpolation


for loopCounter in 1...10{
    println(" \(loopCounter) ")
}

// Swift replaces \(loopCounter) with the VALUE contained in the variable loopCounter as text, everytime the loop is executed.
//

// Using FOR-IN loops with arrays

// Recall that arrays are used to group a bunch of different objects of exactly the same type.

// Often we want to iterate over an array and do something to each element inside the array. 
//In Swift, this is also done with a for loop

// Let's make an array of Strings representing the players for a different app

let characters:[String] = ["Katniss","Primrose","Gale", "Marvel", "Ripper", "Greasy Sae", "Haymitch", "Peeta"]

for character in characters{
    println(" \(character) ")
}
// just like when we used numerical ranges, the variable character takes on the value of each element in the characters array IN ORDER, starting with "Katniss" and ending with "Peeta"

// we then us the string interpolation of the variable 
// to prints each character from the array, one at a time.

