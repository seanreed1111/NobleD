// Fun with Enums. Also, using Switch case to evaluate


// Enums are a structure that is useful when some option
// only has a particular set of choices
// an example of that is a Bool, which has only two possible values, true and false.
// but suppose you need something with three possible values? Or seven? Then use an enum


// for example, let's say we want to make a dating app.
//We want our user to have three choices to mark on
//the profiles of their potential dates "Yes, No, and Maybe."
// This is a perfect place for an enum!

// we will give the enum the name Datable in our definition

enum Datable {
    case Yes
    case No
    case Maybe
}

// now that our Datable enum is defined, let's use it!

let profile1: Datable = Datable.Yes
let profile2: Datable = Datable.No
let profile3: Datable = Datable.Maybe
let profile4: Datable = Datable.No

// note, we can also just do this: let profile5 = Datable.No
// Swift is smart enough to infer that the variable profile5 MUST be of type Datable since we are
//assigning a Datable value to it.



// now let's initialize an empty array of Datable type, and put all of the profiles in it
var myProfiles: [Datable] = [Datable]()
myProfiles.append(profile1)
myProfiles.append(profile2)
myProfiles.append(profile3)
myProfiles.append(profile4)

// we've now marked four profiles for datability and have put them into an array.
//Let's say we now want do different things with each profile:
//say that we want to save the Yes to our favorites,
//put the No's in the deleted pile,
//and put the Maybe in a folder to review later (if the Yes doesn't work out)

// Now we could do an if-then here. But I want to introduce another powerful construct in Swift
//called Switch
// for variables and expressions that only have a countable number of possibilities, Switch is preferred because it makes your code a little easier to read.

//Let's loop through all the profiles, and put a Switch-Case statement inside the loop
// each profile is of type Datable, so we can check their values and do something different with each one.

for profile in myProfiles {
    switch profile{
        case .Yes:
            println("Yes") // Move this profile to the "Favorites" folder
        
        case .No:
            println("No") // Move this profile to the "Deleted Items" folder
        
        case .Maybe:
            println("Maybe") // Move this profile to the "Save for Later" folder
    }
}

// Notice the leading period in front of each of the potential values of Datable in the case statement. Those are mandatory.

// It is important to notice that we covered all the potential values of the Datable variable here
// If we are NOT going to do different things with all the potential values, then we MUST put a default: into our
//Switch statement


for profile in myProfiles {
    switch profile{
        case .Yes:
            println("Yes")   // Draw a Heart Next to the profile on the screen
        default:
            println("Don't do anything if it is .No or .Maybe")
    }
}



// This is not all you can do with Enums and Switch statements, but this is all we need to worry about for now. Feel free to look them up in Apple's Swift docs or Google them to find further ways to use them.