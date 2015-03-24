
import UIKit

var str:String? = "Hello, Optionals"

// An important concept to grasp with any computer language is how it deals with the concept of nothingness. 
// Existentialism and computers go hand in hand

// Since Swift is strict on types, they had to make a decision: What types are allowed to be 'nothing'?
// we saw with dictionaries that if you define a dictionary with String keys and String values, use a key to look up a value, the variable returned is a completely different type: String?, called a string optional or an optional string.

let dict = ["Freddie":"Mercury"]

var newVariable = dict["Freddie"]

//the type of newVariable is String?, to allow for the possibility that the key "Freddie" does not exist in the dictionary, and so newVariable might be nil

newVariable = dict["Elton"]

// Thus, since newVariable is a String?, the location in the computer's memory that is used to store newVariable either holds a String or it holds nil.

//IMPORTANT: The type of String? is not the same as the type of String. 
//Optionals are a COMPLETELY NEW Type

// myOptStr and myString are two entirely different types in Swift!


let myString: String = "I don't think we're in Kansas anymore."
let myOptStr: String? = myString




// As a simple example, suppose you've collected a student's test grades in an array

var myArray = [72,60,80,100] // check for yourself that myArray is of type Int


//But let's say the student missed the fifth test because she was sick
// you sort of want to keep track of the fact that there were five tests, but the score of the fifth test is 'nothing', or nil. 

// The test score has not been set yet. 

//So you'd like it to be nil

// So, it turns out that NONE of the types we've talked, Int, Bool, Double, String, Arrays, etc about are allowed to have 'nil' as a value.

//If you tried to do myArray.append(nil) you'd get an error. I encourage you to try that out.

//Swift's programmers knew that programmers needed a sensible way to deal with values that are allowed to be nil. So what do they come up with? 
//They came up with the concept of Optionals

//You use Optionals in situations where a value may be absent.
//An optional says:

//There is a value, and it equals x or

// There isn’t a value at all


// For EACH and EVERY type that is defined in Swift, there is an analogous Optional type that exists, and this Optional type is allowed to have nil values.
// The optional types are denoted with '?' at the end

// Int --> Int?, which is called Optional Int
// Bool --> Bool?, which is called an Optional Bool
// [String] --> [String?], which is an Array of Optional Strings
// [String] --> [String]?, which is an Optional Array of Strings, i.e. the entire array might be nil, but if the array DOES exist, it consists of Strings that cannot be nil

// We must declare our variables as Optional types before first use, just like all other types.

// ALSO SINCE Each type is different than its optional equivalent, and Swift is strongly typed, you have to be careful when trying to deal with them together.

// for example
var integer = 5
var optionalInt: Int? = 6

//let sum = integer + optionalInt // BAD! These are two different types
//This is NOT VALID in SWIFT!!!

// You CANNOT do manipulations between two different types w/o converting one to another
// Int and Int? are completely different types, just the same as Double and Int are different types.


// Just like you can't combine Double and an Int in the same operation without type conversion (a.k.a type casting) // Try it now!! , you can't combine Int and Int?, or any other type with its optional equivalent

// Many languages will convert these for you implicitly. But not Swift.
// Swift does NOT implicitly assume you want to convert. It throws an error.
// Swift assumes that if you'd wanted to convert the types, you would have EXPLICITLY converted them.

// We have several ways to convert from Int? --> Int

// 1) Forced Unwrapping, which is explicit conversion using the '!' operator on the optional.

integer + optionalInt!

//The exclamation mark effectively says,
//“I know that this optional definitely has a value; please use it.”

// This is the way that is usually suggested by the Swift compiler when you see red errors, but not always the right way. 
//It is only ok to do when you are 100% ABSOLUTELY POSITIVELY sure the optional has a value, as it will CRASH CRASH CRASH your program if the optional is nil!!!

optionalInt = nil

// integer + optionalInt!  // CRASH!!

// 2) Optional Binding  <-- This is a preferred method of dealing with optional values
// Optional Binding uses a "if let" syntax to bind the optional to a non-optional type ONLY IF the optional definitely has a value

// example code is below. recall we declared var integer = 5, var optionalInt: Int? = 6

if let myInt = optionalInt{
    println(integer + myInt)  //nothing is printed
}

// myInt is undefined unless optionalInt has a value.


// you can also add an 'else' clause if you need to do something when the variable is nil

if let newInt = optionalInt{
    println(integer + newInt)
} else {
    println("optionalInt is nil") // optionalInt is nil
}

//This code can be read as:

//“If optionalInt contains a value, set a new constant called 'newInt' to the value contained in optionalInt.”


// Now let's assign a value back into optionalInt
optionalInt = 7

if let newInt = optionalInt {
    println(integer + newInt) // 5 + 7
} else {
    println("The variable is nil")
}

// It turns out that you will see optionals and use optional binding EVERYWHERE in Swift.

//recall
//myString: String = "I don't think we're in Kansas anymore."
//myOpt: String? = myString

if let Str = myOptStr {
    println(Str)
}

// notice that Str is now of STRING Type

// We use optionals in places where variables have not yet been assigned a value. We will see code like this

var myController: UIViewController? //this declares a myController as type UIViewController object and sets its value to nil, so we can deal with it later.

// We will also see plenty of functions that return an optional value as a result
var string = "455"
var optionalIntFromString = string.toInt() // optionalIntFromString is of type Int?

// discuss: Why should the function toInt() return an Int?

//
// insert lots of if let and optional unwrapping exercises here

//EXERCISES

// let's define a function that returns a String?

func retrieveResource() -> String? {
    if arc4random()%2 == 1 {
        return "success"
    } else {
        return nil
    }
    
}

//exercises
//1) write a program that gets an unspecified resource using the function retrieveResource() above. 
// pretend that we are making a request to get data from a website to show on our phone.
//If the resource is available print "Resource acquired", otherwise, print "Resource unavailable"

//2) given a student with 4 test grades and one missed test

let studentGrades:[Int?] = [65,75,85,95, nil]
studentGrades.count //There are 5 elements in the array


// write a program that correctly calculates the student's average (mean)

//3) write a generalized version of the program from #2 above that will do the calculation for any number of test grades and any number of missed tests (nil)


// Hint: The syntax for printing each item in an arrays in Swift is:

for item in studentGrades{
    println(item)
}

// this loop goes through each element in studentGrades, one at a time, in order,
// starting from studentGrades[0] up to studentGrades[4]

// the word item can be replaced by any word you like, i.e. this is also valid:

for grade in studentGrades{

    println(grade)
    
    // do other stuff here for each grade
}

// since grade is more descriptive, it is arguably the better variable name to use








// Notes - Operations between variables of different types
//
//


// have you ever tried to add or multiply or divide a Double and an Int?
//Does it work??
// Try it now!!
//For Reference

let double = 10.4
//double + integer   // INVALID
// double * integer  // INVALID
//double / integer   // INVALID

// in the case of doubles and integers, you need to explicitly convert one or the other types so that the types are both the same
double + Double(integer) // converts the integer into a Double
Int(double) + integer    // converts the double into an Int




// Also note: functions can also return optionals

// many functions do when you get to projects


// whether it is a single optional Button : UIButton?
// whether it is an array of String optionals: [String?]
//or an optional array of Ints: [Int]?
//or an optional array of UILabel optionals: [UILabel?]?
// one you correctly specify the return type, and make sure that your
// function returns EXACTLY what the type SAYS it will return,
// the sky's the limit. You can define whatever you like.






