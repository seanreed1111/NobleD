// Playground - noun: a place where people can play

import UIKit

var str = "Hello, dictionary"

// Dictionaries are unordered pairs of objects, each with a key and a value.

var myDictionary: [String:String] = ["Ralph":"Kramden", "Ed":"Norton", "Alice":"Kramden", "Trixie":"Norton"]

// in myDictionary, we call each item at key:value pair

//We can use the key to retrieve the value

myDictionary["Ralph"]
myDictionary["Trixie"]

// IMPORTANT retrieving a value returns an Optional String in this case, i.e. myDictionary["Ralph"] and myDictionary["Trixie"] are both of type String?

// why is that? 
// optionals are all about allowing something to be nil
// If I were to try to retrieve a value for something that is NOT in the dictionary, I would get nil.
// This means we have to use our optional binding i.e. "if let" statements if we want to do any processing of items that we've searched for from a dictionary

myDictionary["Marcia"] // nil, since there is no key "Marcia" present

// please notice that you can ONLY search dictionaries via the keys
// the following searches also return nil

myDictionary["Kramden"] // nil, no key of "Kramden" exists
myDictionary["Norton"] // nil, since no key of "Norton" exists

println(myDictionary)

// another thing is that you should not in any way rely on the order of how these items were placed into the array, since the system could potentially change this at any time. Dictionaries are an unordered collection



// here is a way to put all the keys of a dictionary into an array
println(Array(myDictionary.keys))

// this is how you can put all the values of a dictionary into an array
println(Array(myDictionary.values))




