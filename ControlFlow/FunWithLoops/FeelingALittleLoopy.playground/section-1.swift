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

// Suppose I am writing an app depicting the final battle of a hero with a hated foe. Let's say I have a catchphrase that want to repeat exactly ten times while I fight him.

// That is a perfect situation for the use of a For Loop!

for loopCounter in 1...10{
    println("Hello. My name is Inigo Montoya. You killed my father. Prepare to die.")
}

// Whatever we enclose inside the curly braces would be repeated ten times.
// The first time through, loopCounter is set to 1.
// The second time through, loopCounter is set to 2.
// etc. etc.
// The tenth time through, loopCounter is set to 10.
// Since the range given (1...10) was from one to ten, inclusive, the loop halts, and whatever is next after the loop would then get run.

// Please note that the name loopCounter is 100% arbitrary, and we could have named it any valid variable name in the world.
// Normally, though, programmers tend to name it something that makes sense

// We could also make Swift just print out the numbers from 1...10.
// recall that the variable index starts at 1 and goes all the way up to 10.
// so to count to 10, we need to look inside the value of the variable during each pass of the loop, and print the variable out as a String.
// We do that using something called string interpolation

// We can convert any variable into a String type by enclosing the variable inside parentheses and sticking a backslash in front of it.

// Then, we can stick it inside of " " like any other String

// we want to print the variable inside of loopCounter
// enclose it in parentheses --> (loopCounter)
// stick a backslash in front --> \(loopCounter)
// now we can stick it inside a pair of double quotes 

for loopCounter in 1...10{
    println("\(loopCounter) Hello. My name is Inigo Montoya. You killed my father. Prepare to die.")
}

// Swift replaces \(loopCounter) with the VALUE of loopCounter everytime the loop is executed.

// Note that it absolutely does not matter what I call the variable in this case, because whatever it is called, the For - In loop demands that the variable starts at 1 and goes up to 10, inclusive.

// Thus, writing our loop with ANY variable name gives EXACTLY the same result.

for index in 1...10{
    println("\(index) Hello. My name is Inigo Montoya. You killed my father. Prepare to die.")
}

// Using FOR-IN loops with arrays

// Recall that arrays are used to group a bunch of different objects of exactly the same type.

// Often we want to iterate over an array and do something to each element inside the array. In Swift, this is also done with a FOR - IN loop

// Let's make an array of Strings representing the players of a different app

let characters:[String] = ["Katniss","Primrose","Gale", "Marvel", "Ripper", "Greasy Sae", "Haymitch", "Peeta"]

for character in characters{
    println("\(character)")
}
// This prints out each character from the array, one at a time.

