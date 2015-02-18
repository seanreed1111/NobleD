// Playground - noun: a place where people can play

import UIKit


// function with no parameters and no return values

func noParams(){
    println("This function has no parameters.")
    println("Even though it prints to the screen it also has no return value.")
    println("A function that has no return value can also be said to return a Void. You might see that in Apple's documentation or on the internet.")
}
// you can call the function noParams as follows. 
// Note, you MUST put the parentheses after the function name in all cases.
noParams()

// function with one parameter and one return value
//
//

func isUpperCase(string: String) -> Bool {
    
    return string.uppercaseString == string
}

// we can use this function as follows
var myAnswer: Bool = isUpperCase("Ms. Marvel")

myAnswer = isUpperCase("Black Widow")
myAnswer = isUpperCase("WONDER WOMAN")

// notice that Swift is smart enough to figure out what type the variable answer (below) has to be since isUpperCase returns a Bool

var answer = isUpperCase("Jean Grey")

// notice that you can also use the function INSIDE of the println() function to show the result as a String
println(isUpperCase("STORM"))


//also, please note that the function can return ANY type, whether it is a predefined one like Int, Double, Bool, or an Array or Dictionary, or any type class defined by the user (or by Apple), like UIViewController, UIButton, UILabel, etc.

// Also note: functions can also return optionals,
// whether it is a single optional Button : UIButton?
// whether it is an array of String optionals: [String?]
//or an optional array of Ints: [Int]?
//or an optional array of UILabel optionals: [UILabel?]?
// one you correctly specify the return type, and make sure that your
// function returns EXACTLY what the type SAYS it will return,
// the sky's the limit. You can define whatever you like.

// //
// //
//function with two parameters and one return value
// //
func theMax(number1:Int, number2:Int) -> Int{
    if number1 >= number2{
        return number1
    } else {
        return number2
    }
}

let maximum = theMax(3,100)
// can also print out the result
println(theMax(1000,100))

//now, let's make the print statement a little more user friendly.
//Recall that if you want to use println out a variable, you need to enclose the variable like so:
// println("\(variable)")

println("The maximum of 1000 and 100 is \(theMax(1000,100))")

//
// function with two parameters and two return values
//We can make a function have more than one return value by using a tuple
//

func sortTwoStrings(string1: String, string2: String) -> (String, String){
    
    if string1.lowercaseString <= string2.lowercaseString{
        return (string1, string2)
    } else {
        return (string2, string1)
    }
}

sortTwoStrings("Robin", "Batman")
println(sortTwoStrings("Harley Quinn", "Joker"))

// let's use a method on Array called append to write a slightly different function.

// for reference
var array = ["Bobby"]
array.append("Peter")
array.append("Greg")


// now let's write our function that returns an array of strings
func sortTwoStringsIntoArray(string1: String, string2: String) -> [String]{
    var array = [String]()
    if string1.lowercaseString <= string2.lowercaseString{
        array.append(string1)
        array.append(string2)
    } else {
        array.append(string2)
        array.append(string1)
        
    }
   return array
}

let myArray = sortTwoStringsIntoArray("Zander", "Buffy")
println("The sorted array is \(myArray).")


