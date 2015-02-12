// Playground - noun: a place where people can play

import UIKit

// fun with Arrays
// arrays are a collection data type
// the array is a container, and it contains other data of other classes
// Arrays in Swift MUST have items of the same class
var myStringArray:[String] = ["nutella", "peanut butter"]

// this defines an Array that will contain items of the String type empty String

var myIntArray: [Int] = [50,40,30,20,10]

let myDoubleArray: [Double] = [1.414, 3.14159, 2.718]  // this is a constant array


// you can also define items first and then assign them to an array. 

let view1 = UIView()
let view2 = UIView()

var myViewArray: [UIView] = [view1, view2]

//Using type inference, we can also write it like this

// Arrays also benefit from Swift's ability to infer type.

let myViewArray2 = [view1, view2]

// myViewArray2 is a constant array, and Swift knows its type.

//now that we have all these arrays, what can we do with them?

//Well, once you throw something in the Array, it would be nice to be able to access it again, right?

// Arrays are what are know as ordered collections. Unless you change the array, the order is going to stay exactly the same.

// you can access the array as follows:
myIntArray[0] // value = 50
myIntArray[1] // value = 40
myIntArray[2] // value = 30
myIntArray[3] // value = 20
myIntArray[4] // value = 10

// The index of the array starts at ZERO, and goes through in order until you reach the last element in the array


// How do I get the number of items in an array

//Use the count function

myStringArray.count  // myStringArray =["nutella", "peanut butter"]
myIntArray.count     //[50,40,30,20,10]
myDoubleArray.count  //[1.414, 3.14159, 2.718]



// I can assign a new variable based on the values in the array, and I can do calculations with them

let myInt = myIntArray[0]

var square = myIntArray[3] * myIntArray[3] // 20*20

println(myStringArray[0])
println(myStringArray[1])
println(myDoubleArray[1])
println(myInt)
println(square)


// you can see that I've snuck in a new function, println(), which prints out objects of String type given various types of input parameters


// What other sorts of operations do you think people might like to do with different kinds of arrays?

// add item to the end of the array

myStringArray.append("Monkeys")
println (myStringArray[2])

//myDoubleArray.append(0.207879576) // ERROR: can't do this because myDoubleArray was defined with let, not var!!

var doubleArray = myDoubleArray  // this makes a COPY of the original, myDoubleArray is unchanged.

doubleArray.append(0.207879576)

// doubleArray.append("Snoopy") // can't do this because String is not of type Double
//
//
//
//

//Recall myIntArray = [50,40,30,20,10]


// remove item from the end of the array
myIntArray.removeLast() // this returns the item removed

println(myIntArray) //[50,40,30,20]
myIntArray.removeLast()
println(myIntArray) //[50,40,30]

//remove an item from a particular index
myIntArray.removeAtIndex(0)
println(myIntArray) //[40,30]

// notice that the items have SHIFTED!!
// 40 is now at index:0, and 30 is at index:1
println(myIntArray[0]) // 40
println(myIntArray[1]) // 30


// we've only scratched the surface of all the fun you can have with Arrays, but go to Apple's online Swift Reference docs if you want more.

//https://developer.apple.com/library/ios/documentation/General/Reference/SwiftStandardLibraryReference/Array.html

// Add array exercises here:







