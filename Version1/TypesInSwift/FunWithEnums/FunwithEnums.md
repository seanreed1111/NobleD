// Fun with Enums.
// Introduction to the Enum type
// Introduction to Control Flow with Switch-Case Statements


// Recall that the type Bool in Swift has two possible values, true and false.

// but suppose you need something with three possible values? Or seven? 
// That is when you might consider using an enum type

// Enums are a user-defined  type that are incredibly useful when some variable only has a limited set of states that it can be in.


// Let's say you're building a basic calculator app
// The calculator might only have four operations that it can perform: multiplication, division, addition, and subtraction.

// that is a perfect situation to use an enum

// as another example, say that you want your user to pick one of the four cardinal directions: North, South, East, West. Use an enum!

// As another example, let's say we want to make a great new dating app.

//We want our user to have three choices for the profiles of their potential dates 
// "Yes, No, and Maybe."
// This is another perfect place for an enum!

// Let's write some code for this dating app enum

// we will give the enum the type name of Datable in our definition

enum Datable {
    case Yes
    case No
    case Maybe
}

// inside the curly braces we specify all the possible values that Datable can be, called cases.

// Each variable of type Datable MUST be one of the cases that exist in the definition.

// now that our Datable enum is defined, let's use it!

let profile1: Datable = Datable.Yes
let profile2: Datable = Datable.No
let profile3: Datable = Datable.Maybe
let profile4: Datable = Datable.No



// now let's put all of the profiles into an array

var myProfiles: [Datable] = [profile1, profile2, profile3, profile4]


// we've now marked each of our four profiles for datability

//Let's say we now want do different things with each profile:

//1)we want to save the Yes to our favorites,
//2)we want put the No's in the deleted pile,
//3)we want to put the Maybe's in a folder to review later (if the Yes profiles don't work out!)

// Now we could do an if-then here. 

// But I want to introduce another powerful construct in Swift
//called Switch-Case

// Switch-Case is the preferred way to work with Enum's because it makes your code a little easier to read than doing a lot of 'if then else if' statements.

//Let's loop through all the profiles, and put a Switch-Case statement inside the loop

// each profile in myProfiles is of type Datable, so we can check their values and do something different with each one.

for profile in myProfiles {
    switch profile{
        case .Yes:
            println("Yes") // A keeper! Move this profile to the "Favorites" folder
        
        case .No:
            println("No") // No thanks. Move this profile to the "Deleted Items" folder
        
        case .Maybe:
            println("Maybe") // Move this profile to the "Save for Later" folder
    }
}

// Notice the leading period in front of each case of Datable, and the colon afterward. Those are mandatory!

// It is important to notice that we've covered all three potential cases of the Datable variable here.

// If we forgetfully leave off a potential case for the ENUM, the SWIFT COMPILER WILL GIVE US AN ERROR. This is super useful error checking to prevent obvious mistakes.

// In case you want to INTENTIONALLY ignore a case, or if we are NOT going to do different things with all the potential case, then we MUST use the keyword default: in our Switch statement

// We can use a for-in loop to go through the 4 items in our myProfiles array one by one, like this.

for profile in myProfiles {
    
    switch profile{
        case .Yes:
            println("Yes!")
        default:
            println("Don't do anything if it is .No or .Maybe")
    }
    
}

