// Playground - noun: a place where people can play

import UIKit

var str = "Hello, dictionaries"

// Prerequities: Loops, Optionals

//Exercises

//


//
// In this exercise we will make and use a dictionary of
//make a dictionary to store student data using a String called studentId as the master key

// each studentId has as its value another dictionary, with Strings as keys of ["FirstName", "LastName", "Major" ] and Strings as values

// So, we will create a dictionary that will have
// type of  [String:[String:String]]

// for example, if studentId "SPYDR3" belongs to Peter Parker, who is a mechanical engineering major, then

// First, let's recall how dictionaries work

var dict:[String:String] = ["alphabet":"soup"]
dict["alphabet"]? // this returns an OPTIONAL!!
dict["Ralph"]?

var myDictionary:[String:[String:String]] = ["SPYDR":["FirstName":"Peter", "LastName":"Parker", "Major":"Mechanical Engineering"]]

//myDictionary["B"]
// Let's Add two more complete entries to this dictionary

//  Elle Woods, major fashion merchandising - key Bruiser
// Katherine Ann Watson, Art History, key - Bruin

myDictionary["SPYDR"] // this returns the inner dictionary with keys FirstName, LastName, Major

myDictionary["SPYDR"]?["FirstName"]?
myDictionary["SPYDR"]?["LastName"]?
myDictionary["SPYDR"]?["Major"]?

// How do we loop over all the items in a dictionary?

for key in myDictionary.keys{
    println(myDictionary[key]!)  // forced unwrapping
}

for key in myDictionary.keys{
    println(myDictionary[key])
}
