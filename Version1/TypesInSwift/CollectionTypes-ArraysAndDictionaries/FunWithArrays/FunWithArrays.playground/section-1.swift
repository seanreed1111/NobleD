// Playground - noun: a place where people can play

import UIKit

// fun with Arrays
// Arrays are a collection data type
// The array is a container, and it contains other data of other classes

// Arrays in Swift MUST ALWAYS have items of the same type

// Once you've declared an array to be of a particular type, the type CANNOT be changed.

var myStringArray:[String] = ["nutella", "peanut butter"]

// this defines an Array that will contain items of the String type empty String

var myIntArray: [Int] = [50,40,30,20,10]

let myDoubleArray: [Double] = [1.414, 3.14159, 2.718]

// NB. since I used let to declare myDoubleArray, the entire array is a CONSTANT that cannot be changed.

// Recall that Swift is good at inferring the type of variables when you assign them with a value, so we could also have written the above as follows

var myStringArr = ["nutella", "peanut butter"]
//
var myIntArr = [50,40,30,20,10]
//
let myDoubleArr = [1.414, 3.14159, 2.718]


// you can also define items first and then assign them to an array. 
// Notice that arrays can contain ANY type, as long as the types are exactly the same.

// Apple has defined a type called UIViewController in Swift which
// you will use frequently when building your own apps.

// These premade objects can be put into arrays just like 
// anything else!

let vc1: UIViewController = UIViewController()
let vc2: UIViewController = UIViewController()

var myViewArray: [UIViewController] = [vc1, vc2]

//Voila, we now have an array of view controllers ready to go!


// Accessing elements in the array

// Arrays are what are know as ordered collections. Unless you change the array, the order is going to stay exactly the same.

// recall var myIntArray = [50,40,30,20,10]

// you can access the elements inside an array as follows:
myIntArray[0] // value = 50
myIntArray[1] // value = 40
myIntArray[2] // value = 30
myIntArray[3] // value = 20
myIntArray[4] // value = 10

// The index of the array starts at ZERO, and goes through in order until you reach the last element in the array
// So, an array like myIntArray with five elements has values in the 0,1,2,3,4 indicies

// NB: Do not try to look inside myIntArray[5]!
//Your program will CRASH and you will be sad.

// However, you CAN add value to the end of the array using the append statement

myIntArray.append(0)

myIntArray[5] // value = 0

// you can also use the elements in a calculation, or print the entire array

println(myIntArray[0] + myIntArray[1]) //value = 90
println(myIntArray)

// recall  myStringArray =["nutella", "peanut butter"]
// recall myDoubleArray = [1.414, 3.14159, 2.718]

// What other sorts of operations do you think people might like to do with different kinds of arrays?


// we can count the elements of an array
myStringArray.count     // 2
myIntArray.count        // 6
myDoubleArray.count     // 3

//append a new element of the SAME TYPE to the end of the array

myStringArray.append("Monkeys")
myIntArray.append(-10)

//but if we try to do myDoubleArray.append(0.207879576)--> ERROR

// we declared myDoubleArray with a let statement, so it cannot be changed.
// we CAN, however, make a copy of myDoubleArray and manipulate the copy.

// In Swift, Arrays are copied BY VALUE.
// This means that anything we do to our copy does NOT change the original array

var myDoubleArray2 = myDoubleArray

myDoubleArray2.append(0.207879576)
myDoubleArray // the original array is unchanged


//Continuing with operations we can do on arrays...

// we can remove item from the end of the array
let last = myIntArray.removeLast() // -10

// we can print the array and see that it has been modified

println(myIntArray) //[50,40,30,20,10,0]

// And, we can do it again.
myIntArray.removeLast()
println(myIntArray) //[50,40,30,20,10]

//We can also remove an element from an array at a particular index

myIntArray.removeAtIndex(0) // 50

// now we can print the new array
println(myIntArray) //[40,30,20,10]

// notice that the elements in the array have SHIFTED!!

// 40 is now at index:0, and 30 is at index:1, etc.

println(myIntArray[0]) // 40
println(myIntArray[1]) // 30
println(myIntArray[2]) // 40
println(myIntArray[3]) // 30

// we've only scratched the surface of all the fun you can have with Arrays, but go to Apple's online Swift Reference docs if you want more.

//https://developer.apple.com/library/ios/documentation/General/Reference/SwiftStandardLibraryReference/Array.html


// Now, let's discuss dictionaries in Swift






