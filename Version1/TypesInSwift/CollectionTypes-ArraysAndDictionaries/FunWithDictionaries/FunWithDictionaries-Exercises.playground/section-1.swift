// Playground - noun: a place where people can play

import UIKit

var str = "Hello, dictionaries"

// Prerequities: Loops, Optionals

//Exercises

// So we've see examples where the values stored by arrays are simple data types. But we can just as easily store collection types such as Arrays and Dictionaries as the values. We'll look at this now.

// Suppose our student records got lost, and we'd really like our students to help us out by self-reporting all the classes they've taken at here at Noble Desktop.
// Students may have completed one or more classes. Some students may have completed a lot more, multiple repeat customers! And that's something we want to know, too.


// For this exercise, please make a dictionary of type [String:[String]] with the key being the student's Name, and the value as an array of type String. Inside the array, store the names of all the classes taken at Noble Desktop.
// Please make three entries in this dictionary for three different ficticious students where you  (feel free to make up imaginary course names)




//
// In this exercise we will make and use a dictionary of dictionaries

//Let's use a String called studentId as the master key

// each studentId has as its value another dictionary, with Strings serving as the keys  ["FirstName", "LastName", "Major"] and Strings giving the values 
// associated with these keys.

// So, we will create a dictionary that will have
// type of  [String:[String:String]]

// for example, if studentId "SPYDR3" belongs to Peter Parker, who is a mechanical engineering major, then

// First, let's recall how dictionaries work

var dict:[String:String] = ["alphabet":"soup"]
dict["alphabet"]? // this returns an OPTIONAL!!
dict["Ralph"]? // this key does not exist, so nil is returned

var myDictionary:[String:[String:String]] = ["SPYDR":["FirstName":"Peter", "LastName":"Parker", "Major":"Mechanical Engineering"]]

// Now, let's Add two more complete entries to this dictionary

myDictionary["Bruisr"]=["FirstName":"Elle", "LastName":"Woods", "Major":"Fashion Merchandising"]

myDictionary["Bruin"]=["FirstName":"Katherine Ann", "LastName":"Watson", "Major":"Art History"]


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
