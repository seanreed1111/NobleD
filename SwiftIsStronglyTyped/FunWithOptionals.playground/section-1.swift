// Playground - noun: a place where people can play

import UIKit

var str:String? = "Hello, Optionals"

// An important concept to grasp with any computer language is how it deals with the concept of nothingness. 
// Existentialism and computers go hand in hand
// Since Swift is strict on types, they had to make a decision: What types are allowed to be 'nothing', also known as nil?

// Think about a value before you set it. It is set to 'nothing'. 

// As a simple example, suppose you've collected a student's test grades in an array

var myArray = [40,60,80,100] // check for yourself that myArray is of type Int


//But let's say the student missed the fifth test because she was sick
// you sort of want to keep track of the fact that there were five tests, but the score of the fifth test is 'nothing', or nil. 

// The test score has not been set yet. 

//So you'd like it to be nil

// So, it turns out that NONE of the types we've talked, Int, Bool, Double, String, Arrays, etc about are allowed to have 'nil' as a value.

//If you tried to do myArray.append(nil) you'd get an error. I encourage you to try that out.

//Swift's programmers knew that programmers needed a sensible way to deal with values that are allowed to be nil. So what do they come up with? 
//They came up with the concept of Optional Types

// For EACH and EVERY type that is defined in Swift, there is an analogous Optional type that exists, and this Optional type is allowed to have nil values.
// The optional types are denoted with '?' at the end

// Int --> Int?, which is called Optional Int
// Bool --> Bool?, which is called an Optional Bool
// [String] --> [String?], which is an Array of Optional Strings
// [String] --> [String]?, which is an Optional Array of Strings, i.e. the entire array might be nil, but if the array DOES exist, it consists of Strings that cannot be nil

// We must declare our variables as Optional types before first use, just like all other types.


