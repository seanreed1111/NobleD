// Dictionaries in Swift
// "String Optional" data type

// In this section we will discuss dictionaries in Swift, and also a brand new data type, String?

// Let's begin with dictionaries

// Dictionaries are a collection of pairs of objects. The first item is called the key, and the second is called the value.

// We can use the key to insert into and retrieve the pairs of items from the dictionary

// The keys are typically of String type.
// The values can be of any type, even arrays and other dictionaries.

// as an example, let's define a dictionary which has Strings as both the keys and the values

var myDictionary: [String:String] = ["Ralph":"Kramden", "Ed":"Norton", "Alice":"Kramden", "Trixie":"Norton"]

// in Dictionary, we call each item inside a key:value pair

//We can use the key to retrieve the value

myDictionary["Ralph"]
myDictionary["Trixie"]

// IMPORTANT! 
// Retrieving a value from a dictionary using a key returns an Optional String.

// Optionals brand new data types that we haven't spoken about yet that are absolutely crucial to Swift.

//in this case, i.e. myDictionary["Ralph"] and myDictionary["Trixie"] are both of type String?, which can be called either'Optional String' or 'String Optional'

// We will talk more about optionals at a later time.

// But why is this new Type called String? even necessary?

// Optionals are necessary in Swift because they signify that a variable is allowed to be nil, which in Swift means "Does Not Exist"

// Can anyone guess why this might be needed for dictionaries when we try to retrieve a value for a given key?

//Answer.
// Think about the case where you try to use a key on a dictionary where that key is not in the dictionary.

//If the key is not in the dictionary, then the value will also not be in the dictionary. 

// So Swift should be able to tell us that the value we are looking for DOES NOT EXIST

//Hence the need for the String? data type.

// The value we are looking for might or might not exist. So looking up a key in a dictionary can return either nil, i.e. does not exist, or a String.

myDictionary["Marcia"] // nil, since there is no key "Marcia" present

myDictionary["Ralph"]
myDictionary["ralph"] // keys are case sensitive!!!

// please notice that you can ONLY search dictionaries via the keys

// the following searches also return nil

myDictionary["Kramden"] // nil, since no key of "Kramden" exists
myDictionary["Norton"] // nil, since no key of "Norton" exists

println(myDictionary)


// If you have a dictionary and you want to make an array of all the keys, you can type:

Array(myDictionary.keys)

// If you have a dictionary and you want to make an array of all the keys, you can type:

Array(myDictionary.values)

// dictionaries are an extremely common way of passing data back and forth on the internet
// We'll see more about dictionaries at a later time. 

// We're now going to explore Optional data types a little further.


