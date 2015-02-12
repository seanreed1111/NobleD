// Playground - noun: a place where people can play

import UIKit

// intro to classes
//Fish







//Exercises
//
//

// Using an array of Strings, create a new class Stack that implements a stack data structure. (need mutating functions)
// Stacks are a ubitquitous last-in, first-out (LIFO) structure

// One way to visualize a stack is to think about a small clown car with one door.

// Our Stack will have three methods
//1) push(item: String) that will add a new String to the stack
//2) pop()-> String that will remove the last item pushed to the stack, and return that item
// 3) peek()-> String that will print the last item pushed to the stack but does NOT remove the item.

// push("Clown1")
// push("Clown2")
// push("Clown3")
// push("Clown4")
//
// after we do these four actions, our stack is now [Clown1, Clown2, Clown3, Clown4]

// pop()  // returns "Clown4". Stack is now [Clown1, Clown2, Clown3]

// pop()  //returns "Clown3". Stack is now [Clown1, Clown2]
// peek() //returns "Clown2". Stack remains [Clown1, Clown2]
// push("Clown5") // Stack is now [Clown1, Clown2, Clown5]

// and so forth

///
//
//

// Part 1 - Using Enums, build a class called PlayingCard

// PlayingCard should have properties that store its suit and rank separately. 
// It should also have an init method to form a new card given the rank and suit as input parameters.
// Finally, it should have a method (or computed property) that returns its rank and suit together as a String, for example "A of Hearts", or "3 of Diamonds"

// Part 2 - Using an Array of your newly created PlayingCard class, build a class called Deck

// Deck should have an init method that constructs a standard deck of 52 card.
// Deck should have a method called dealFromTop that removes the first PlayingCard from the deck and prints its rank and suit as a String (need mutating function)
// Deck should have a method called dealAll that deals all the cards remaining in the deck in a similar manner to dealFromTop


//Apple Things
//
//
// Views
//View controllers

//Subclass
//Superclass
//Inheritance
//Properties
//Methods
//Pass by Reference ONLY


