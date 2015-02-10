// Playground - noun: a place where people can play

import UIKit

var str = "Hello, Big Fish"

// Game: Big Fish
/*
Put all the info about the exercise in the front, so that if someone wants to just get started w/o following along step by step, they can do so.

Out in nature we know that little fish get eaten by big fish, and
big fish get eaten by even bigger fish.
We are going to encapsulate this in a simple game which is going to get our feet wet in terms of Classes, Functions, and methods.

We are going to define a class called Fish. This class will have a property called size which we will set when we make a new fish and which cannot be changed
We will also define a few methods on the Fish class, including a method called fight, and a method called talk, which lets an instance of the class Fish tell us what size fish it is (by printing to the screen.)

Next, we will make a subclass of Fish called Shark. Our class Shark will inherit all of the methods and properties of Fish, but will also override some of them, so you can see when the override notation has to be used.



*/

// we are going to do the same thing multiple times, in slightly different ways

// Fish w/o an init method and using size = small
// Fish w/o an init method and using size: String?
// Fish w/o an init method and using size: enum
// Fish with an init method for size

// Fish w/o an init method and using size = small
class Fish1 {
    var size = "small"
    
    func talk() -> String{
        return "I am a \(size) fish"
    }
    
    func fight() ->String{
        return "I am the winner" //we'll fix this later
    }
}

let fish1 = Fish1()
fish1.talk()
fish1.size = "big"
fish1.talk()

// Fish w/o an init method and using size: String?
class Fish2{
    var size: String?
    func talk() -> String{
        return "I am a \(size) fish"
    }
}

let fish2a = Fish2()
fish2a.size = "small"
fish2a.talk()

let fish2b = Fish2()
fish2b.talk()


// Fish w/o an init method and using size: String?

class Fish3{
    var size: String!
    func talk() -> String{
        return "I am a \(size) fish"
    }
}

let fish3a = Fish3()
fish3a.size = "Very Big"
fish3a.talk()

let fish3b = Fish3()
fish3b.talk()

// Fish w/o an init method and using size: enum

// let's define an Enumeration. 
// We know exaclty how many sizes we want the fish to be
// rather than risk that someone puts in a String that our program doesn't understand, we enumerate all of the possible
// sizes of Fish. This also provides documentation to the users of our class so that they know exactly what sizes are available. This communication is super important.

enum Size{
    case SmallFish
    case BigFish
    case VeryBigFish
}


class Fish4{
    var mySize: Size = .SmallFish
    
    // the "dot" before the case is important and MANDATORY
    // however, Swift is smart enough for you to also be able to 
    // write this:
    //    var mySize = .SmallFish.

    // Swift infers that since it takes an enumValue from Size, the variable mySize MUST be of type Size
    
    func talk() -> String{
        return "I am a \(mySize) fish"
    }
}

let fish4 = Fish4()
fish4.talk()


// Please note that for objects of class Fish1 and Fish4, we defined all fish created to start off as a small fish (or SmallFish). But that's not really fun. What if we want to define the size of the fish right when we create it. 
// when you want to set properties in instances of your class right when they are created, that is called an initializer.
// In our class, we have to include what is called an init method, usually put right near the top of the class, after its properties.
// Let's make a new class Fish5 based on Fish4, but we won't automatically make any new fish have mySize = .SmallFish


// first version
//class Fish5{
//    var mySize:Size
//    
//    func talk() -> String{
//        return "I am a \(mySize) fish"
//    }
//
//}
//
//let fish5 = Fish5()
// let's look at the error message we get here when we uncomment this class.
// it says "Fish5 cannot be constructed because it has no
// accessible initializers"

// In other words, when we create a no instance, fish5, Swift expects that all of its properties are either defined or Optional, so that they are allowed to be nil.


// So there are two ways to fix this problem. 

// One, we rewrite the variables to var mySize: Size?

// But this doesn't seem right, because we know that (adult) fish have a definite size.
// So, we will go the second way, and write an initializer


/*

Optional Exercises

1) Define a new class Bear, and give the bear some properties and methods you make up. One of these methods should be to eat anything that is of class Fish (look online in StackOverflow or the Apple Docs for how to check the class of an object)
*/

/*

Summary and Transition to the next Section

Now our classes are small, with only a few properties and methods. Apple, in order to make iOS programming easier straight out of the box, has spent a number of yeasr defining big classes of objects with a lot of power and functionality. The objects are so powerful that they handle lots of the details for you by default, but they are still flexible enough to let you modify their properties easily. Also, just like we made our Shark class as a subclass of Fish, we can also subclass substantially all of the classes that Apple has defined and add in any functionality that we need!
That is the power of object oriented programming. We can make base classes and then by using inheritance and subclassing we can tailor them to our exact needs.

In the next subject, let's talk about a few of Apple's pre-made classes
1)UIView
2)UIButton
3)UILabel
4)UIViewController

*/
