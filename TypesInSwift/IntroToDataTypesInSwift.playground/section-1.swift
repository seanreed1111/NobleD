// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var str2: String = "Hello World"

//With this playground you can see our first data type. The String.



var myString : String = "Hello World!"


// Once we've declared a variable, we can then just assign it new values whenever we want.

myString = "New String"

// Introduction of new data types
// Int and Double

var myInt: Int = 42
var myDouble : Double = 42.01
var myFloat: Float = 100.0


// introduction to 'let' vs 'var'

let myPermanentString: String = "Cannot change this string"
let myPermanentInt: Int = 21
let myPermanentDouble: Double = 21.0

//myPermanentString = "new String"


///////
//Bool
//////

// Swift also has a logical type called Bool, that can only take two possible values, true and false 

var isAvailable: Bool = true
var isRaining: Bool = false
var isActive = true

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



// Note. You need to declare variables before you use them. Once they've been declared, you don't have to declare them again.

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

