What is the best way to explain delegates and protocols?

So, we've looked at Classes, and by now you should all be at least a little comfortable with how Classes, Subclasses, and Inheritance works

Let me ask you a two questions: 
1)How mamy subclasses can a class have? A: Any amount
2) How many Superclasses can a Class have? A: Only one.

Swift has single inheritance. Every class has at most one Superclass. 

The designers of Swift decided that single inheritance was less messy and easier to manage.
So that's what we work with in Swift.

But what happens if you still need bits of functionality that are not strictly contained in a particular class?

That is when we use delegates and protocols.
Suppose we want our app to connect to the web.
We can define a bunch of objects that have to do with getting and posting things to websites. But then we have to teach our controlling class (Usually a subclass of UIViewController) how to deal with these web-ready objects. 

It would be cool if we had multiple inheritance and could also make our ViewController a subclass of the web objects, too! That way it would instantly inherit all the methods and properties that it needed. BUT THIS CAN'T HAPPEN.

So what we do instead is make sure our ViewController objects follow the protocol designed for web objects. 
This protocol lists out all of the methods that the ViewController might need to make the web objects work. 
It then leaves the programmer of the View Controller to implement these methods to do actually what they need to do in the context of the app.
Protocols have both "required" methods and "optional" methods

The ViewController that announces "Yes, I agree to implement all of the required method of this protocol (and actually does so!)" is allowed to set itself as the delegate for that protocol. 

Please note that there are THREE part to the previous statement

It is EASY to forget one of the steps, but if you do, you will be staring at your computer screen wondering why your app doesn't do what you think it should do even though the rest of your code looks ok

1) The announcement ("I agree to follow the protocol").

2) The implementation ("I've now implemented all the required methods of the protocol")

3) The setting of the delegate property ("In code, I have set myself to be the delegate of the object that needs it")


For our web object example above, first our ViewController would need to announces it agrees to follow the web object protocol. This goes at the beginning of the definition of ViewController class.

Next, our ViewController would have to implement all the required methods plus zero or more optional methods it might need to do what it want to do with the web objects, The required methods go in the same place the other methods defined in the class. In practice, we usually put them at the end

 Finally, our ViewController, will assign itself in its code as the delegate for the web objects. This usually happens right after the web objects that need the delegate are created.

The delegate pattern as I've described here happens over and over in iOS programming. Here is an incomplete list of all the objects in iOS that can use/need delegates.

NSURLConnection -> Web Connection Objects
PKPayment -> ApplePay Objects
AVSpeechSynthesizer -> Computer Speech Object
AVAudioSession -> Audio Playback and Recording Object
UITextField -> Text Input and Capture Object
UITableView -> Creation and Management of Table View Objects
UIApplication -> Object representing your entire Application
CLLLocationManager -> Object that delivers heading and location data to your app
EKEventView -> Controller for your calendar view 
HMHomeKit -> Framework that controls the Internet Of Things via your iPhone.

By far, the most common usages of delegates are for textfields and tableviews, as these are ubiquitious in iOS apps.

We are going to work through a simple example first, using the UITextField and its delegate. TableView will come in the second course.

I don't expect we'll have time to talk about the protocols for the NSURLConnection objects. We will cover NSURLConnection in detail in a future course (might or might not be the second one). But I've included a file snippet for your reference just so you can see it follows the three steps as laid out above.

