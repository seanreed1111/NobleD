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

let myViewArray2 = [view1]

// myViewArray2 is a constant array, and Swift knows its type.

//now that we have all these arrays, what can we do with them?

//Well, once you throw something in the Array, it would be nice to be able to access it again, right?

// Arrays are what are know as ordered collections. Unless you change the array, the order is going to stay exactly the same.
// you can access the array as following,

//recall myIntArray = [50,40,30,20,10]

myIntArray[0] // value = 50
myIntArray[1] // value = 40
myIntArray[2] // value = 30
myIntArray[3] // value = 20
myIntArray[4] // value = 10

// The index of the array starts at ZERO, and goes through in order until you reach the last element in the array

// so I can assign a new variable based on the values in the array, and I can do calculations with them

let myInt = myIntArray[0]

var square = myIntArray[3] * myIntArray[3] // 20*20

println(myStringArray[0])
println(myStringArray[1])
println(myDoubleArray[1])
println(myInt)
println(square)


// you can see that I've snuck in a new function, println(), which prints out objects of String type given various types of input parameters


// What other sorts of operations do you think people might like to do with arrays?

// add item to the end
// remove item from the end
// add or remove one or more items from anywhere in the array
// go through the array one item at a time and do something with each thing.

//sort the array according to some sort of criteria, e.g. alphabetical order, or from biggest numbers to smallest



// optional material. defining arrays using array constructors

/*
var myStringArray:[String] = [String]()

// this defines an Array that will contain items of the String type empty String

var myIntArray: [Int] = [Int]()

var myViewArray: [UIView] = [UIView]()

//Using type inference, we can also write it like this


var myArray2 = [String]()

*/