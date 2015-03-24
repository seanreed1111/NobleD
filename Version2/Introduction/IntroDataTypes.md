// Open up a file with nothing in it
// that way the comments and the "import" statement are 
// not distracting, and I can concentrate on the 
introduction to variables.

Introduce what a variable is
A variable is storage for results or other things we need

// Make sure to give the variable names some distinction
e.g. 
var greeting = "Hello, Playground"
rather than 
var str = "Hello, playground"

Do not repeat the same thing more than twice.

Jump into println(greeting) right away, so that the users will have the concept of the fact that variables are storage.

Use as much connective tissue as you can

Introduce Comments by going up and commenting out a line
where the variables are defined, to get an immediate error.
Then explain that anything to the right of // is ignored by the computer and not executed.

Assume that the users will not be typing anything into the file other than what I tell them to type.

Make sure I keep the focus of the lecture, and constantly communicate why I am having them do things.




type in

var str2: String = "Hello World"

//With this playground you can see our first data type. The String.






// Once we've declared a variable, we can then just assign it new values whenever we want.

myString = "New String"


// In order to see the type of any variable or expression, hold down the <Option> button and mouse over the expression in quesiton.
// when you get to something that XCode can translate for you, the cursor changes into a question mark.
// when we do it in this case, it shows 
//var str: String


var myString : String = "Hello World"
// The key word var is mandatory, it means that the variable myString can potentially be changed somewhere into another STRING somewhere in the life of the program.

// Once we've declared a variable, we can then just assign it new values whenever we want.
// Note. You need to declare variables before you use them. Once they've been declared, you don't have to declare them again.
// Since these are all declared with the keyword var, all of these can be reassigned to new values OF THE SAME TYPE AS THE ORIGINAL DECLARATION

myString = "New String"

//We've just changed the value of myString by assigning it to "New String"

myString = ""
// now we've just changed its value to the empty string, a string without any content



// Swift is a typesafe language. So once a variable is defined as being of String type, that is its type for the duration.
// We can't for example set myString = 5
// That would give us an error.
//Try it. What does the error say?
// There are several other primitive data types that you will use frequently, but many of the things you will output to your iPhone Screen inside labels, textViews, etc will be of String. So make sure Strings are your friends.


////////////////////////////////////////////////////////////
// Begin discussion of println
// Begin discussion of String Interpolation
// Begin discussion of String Addition






// Begin introduction to 'let' vs 'var'

// we're now comfortable with declaring a variable using the keyword var
// now, let's move on to the keyword let


// What if you want to declare a constant, something that is not going to get reassigned a new value?

// Then you need to use the keyword let
let myString2: String = "Cannot change this string"
let myInt2: Int = 21
let myDouble2: Double = 21.0

//Now, there is no way to change any of these variables within your program. They are essentially read-only constants.


//Try to change the values in these variables. What is the error message that you get?

//Xcode's error messages try to be helpful. Very often they are, but sometimes they just miss the mark. In this case, the message is pretty good at telling you what is wrong.
// The error says "Cannot assign to 'let' value"
//

////// Introduction of new numerical data types
// Int, Double, Float

var myInt: Int = 42
var myDouble : Double = 42.01
var myFloat: Float = 100.0

// define more integers here




///////
//Bool
//////

// Swift also has a logical type called Bool, that can only take two possible values, true and false 

var isAvailable: Bool = true
var isRaining: Bool = false
var isActive = true

//where might you use a Bool?
Well, as we will see a bit later, Bools are mostly used 
with statements beginning with the keyword if

if isAvailable {

    println("The camera is available")
}

if !isRaining {
    println("Good thing it is not raining.")
}

if isActive{
    println("Your application is active.")
}

// you can prefix a Bool  the ! operator to flip a Bool to the opposite state

!isAvailable  // false
!isRaining  // true
!isActive // false




///// Apple-defined types beyond String, Int, Double, Float

// String, Int, Double are all defined types that you might be familiar with from other languages
// There are also a huge number of types defined by Apple that you will become familiar with on your journey to becoming an iOS programmer.


let myView: UIView = UIView()
let myLabel: UILabel = UILabel()
let myController: UIViewController = UIViewController()
let myButton: UIButton = UIButton()


let myView2 = UIView()
let myLabel2 = UILabel()
let myController2 = UIViewController()
let myButton2 = UIButton()

//Notice that Swift correctly figured out what we were trying to do, thus saving us some typing.

// Just to square the circle, that means that we could also have written the following in the beginning.

let myString3 = "This is my String"
let myInt3 = 3
let myDouble3 = 3.0

//When you are programming, it is common practice to let Swift infer the types whereever possible. But it is totally ok to write them all out as a beginning just to get use to how the declarations work.

// We've talked about various primitive and not so primitve data types that exist in Swift, and now we're going to move on to discuss what is known as a Collection data type: Arrays.

// We've talked about various primitive and not so primitve data types that exist in Swift, and now we're going to move on to discuss what is known as a Collection data type: Arrays.

