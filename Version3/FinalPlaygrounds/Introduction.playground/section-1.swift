// Questions to answer in this section
// What is Swift?
// What is the history of Swift?
// What did iOS phones and iPads used to be programmed in?
// Why did Apple change the language?

//What is the goal of this section?
// What is the Xcode Workspace
// What is a playground? 
// What is a project?
// Will we be using playgrounds or projects in this class?
// Do you program real iOS apps in playgrounds or projects?

////////////////////////////////////////////////////////
// Why do we use variables when programming computers?
// How do you make a new variable?
// What is the definition of declaration?
// What is the definition of assignment?
// What does the 'type' of a variable mean?

// How do we declare a String variable and assign it a value?
// Where should this be done inside the file?
// What is the difference between declaring a new variable with 'var' and with 'let'?

// What is a String literal?

//how do we print a string literal to the console?
//how do we print a variable to the console?

//how do we join two Strings together?

// How can we dive further into the most common types in Swift?

//********************************************************
// ****What is a variable?
// A variable is a convenient way of connecting a location in the computer's memory to a value or set of values.
// each variable must have an identfier, called the variable's name.
// We can DECLARE a variable ONLY ONCE. which means we are telling the computer its name. We are telling the computer to allocate, or put aside, a bit of memory for us that we will refer to by the name given
// We can also a ASSIGN a value to a named variable. We are telling the computer to store info we need in that memory that it allocated for us.

//With one MAJOR exception, to be discussed later, in Swift we must ASSIGN a value to a variable at the same time we DECLARE it.

// We declare variables with the keyword 'var'. 

//so, to make a variable called greeting we write the following:


var greeting = "Hello, World"

// this statement DECLARES a new variable called 'greeting' on the LHS of the equal sign
// It also ASSIGNS a value of "Hello World" to the variable greeting on the RHS.

// In Swift, we (almost) always DECLARE variables and ASSIGN a value to them at the same time.

// Now that we have declared our variable, we don't need to declare it again. To change the value of the variable, we just need to write the variable's name on the LHS and the new value we want to ASSIGN to it on the RHS

greeting = "Hello, Class"

//We've now erased "Hello World" from our computer's memory.
//It is gone forever.
// In the variable greeting, we are now storing "Hello, Class"

//Notice that you should have seen your screen attempt to autocomplete the variable "greeting" for you.
// You should have seen "String greeting" pop up there.
// Xcode is a sophisicated development environment, and it works hard to anticipate your needs and guess what you want.
// Be aware this usually works splendidly, but it is not 100% foolproof! The buck always stops with you, so just be aware that Xcode will get it wrong sometimes.

// The text 'String greeting' showed up in the autocomplete because Xcode has guessed made our variable 'greeting' was of type 'String' as soon as we declared it. 

//The String type holds a group of individual characters which is enclosed in double quotes.

// In Swift, we say the variable 'greeting' is of type 'String'.

// Swift might be different than other languages you are familiar with because it is 'strictly typed'.

// This means that the 'type' of the variable must be
//1) explicitly declared by the programmer known when the variable is defined, or 
//2) the Swift compiler must be able to guess the type from the value that was assigned to it.

// In addition, strictly-typed means that once a variable has been declared, and has a type, the type CANNOT BE CHANGED, and we CANNOT ASSIGN A VALUE OF A DIFFERENT TYPE to the variable

// Let's make a new variable with value of 24.5 and type of Double (a 'Double' is a number type that includes a decimal point)

var measurement = 24.5

// The type 'Double' is the default type for any variable that has a value with one or more decimal places in them.

// We say that the variable 'measurement' is of type 'Double'.

// Just as we did with 'greeting', we can later change the value of the variable 'measurement' if we choose to.

measurement = 122.7

// Just like we changed the variable greeting from the String "Hello, World" to the new String "Hello, Class", we are free to change the value of measurement to a completely different Double.

// HOWEVER, since the 'type' of a variable CANNOT BE CHANGED,
// Swift will give an error if we do this

//measurement = "Hello, Class"   //--- ERROR 'String' is not convertible to 'Int'

// Similarly, we will also get an error if we try to assign an Int to the variable 'greeting' that we previously declared, since 'greeting' is of type String:


//greeting = 122.7 //--- ERROR 'Double' is not convertible to 'String'

// In summary, variable in Swift, once declared, cannot change their type, though we can change the value that they hold.

// Practice: 
// define a variable that holds your first name as a String
// define a variable that holds your last name as a String

// define a different variable that holds the name of the city you were born in
// define a different variable that holds your approximate height in inches (or centimeters), including the first decimal place

/////////////////////////////////////////////////////////////////
// Defining constants in Swift

//Swift also allows you define constants, using the keyword 'let'
// Constants are declared and assigned a value in a similar way to variables

// Declare and Define a few constants using the keyword 'let'
let pi = 3.14159

let kindOfWood = "maple"

// these constants have types, just like the variables we declared earlier.

// pi is of type Double, and kindOfWood is of type String.

// Once the value of pi has been assigned, it CANNOT be changed.

// For example, if we try to assign it a new value to pi, 
// Xcode will throw an error
//pi = 3.1 ---ERROR Cannot assign to 'let' value 'pi'


// Now that we've gone over defining variables and constants that have String and Double types, let's spend some time going over some of the other data types commonly used in Swift.


// ****What are some of the different data'types' that are available in Swift?
// Besides the String and Double data types that are a plethora of Apple-defined types in defined in Swift. Some have analogs found in other languages, but many of them are specific to running iOS apps on your phone.

// Here are a few other native data types that you are likely to come across in Swift.
// Note that we are using variables here, but you can have either variables or constants with all these types.

// The 'Integer' Type
// Not surprisingly, the is the type of variables that hold integers

var age = 22
var width = 8
var height = 11

// The 'Bool' Type
// Bool is a type of variable whose value can ONLY be either 'true' or 'false'

var raining = true
var sunny = false
var programActive = true
var lightSwitchOn = true
var cloudy = false

// the variables raining, sunny, etc. are all Bools. Sometimes these are also interchangeably called Booleans or logical variables, so be alert to these terms are well.

// just like all variables, Bool types can be changed at a later point in the program.

cloudy = true
lightSwitchOn = false




///// Apple-defined types beyond String, Int, Double, Bool

// Swift also allows you to program your own specialized data types to tackle whatever problem you are working on, either from scratch, or by building on top of work Apple has already done for you.

// There are also a huge number of types defined by Apple that you will become familiar with on your journey to becoming an iOS programmer.

// In summary

// Swift is strongly typed, unlike many other languages you might be familar with.

// Swift uses the keyword 'var' to declare variables, and the keyword 'let' to declare constants.
// These keywords are used ONCE upon first use of the variable or constant
// (Almost) all variables/constants must be assigned a value at the same time they are declared.
// A variable can be assigned a new value at any time after declaration as long as the new value is of the SAME TYPE as the original value. Swift is strongly typed!

// A constant cannot be changed for the life of the program.

// Double, Bool, Int, and String are commonly used basic data types in Swift, but there are many more, and one can also define one's own types if needed.


// Next up, we are going to talk about arrays.
// An Array is a variable that holds a collection of elements that all have the same type.
// e.g., in Swift we can have an String array, or a Bool array,  or an Int array.

// Variables of the Array type still have to be declared and assigned values just as the other types we've learned. However, the syntax always uses an opening square bracket, [, and a closing square bracket, ], to denote the beginning and the ending of the Array, respectively. 
// Futher, all the elements of the Array MUST be separated by commas.

// This is an Array of Strings
var myClothes = ["shirt","shorts","shoes"]

// we write the 'type' of myClothes as [String]

// This is an Array of Ints
var oddNumbers  = [1,3,5,7,9]

// we write the 'type' of oddNumbers as [Int]


// This is an Array of Doubles
var series = [1.1, 2.2, 3.3, 4.4]

// not surprisingly, we write the 'type' of series as [Double]



