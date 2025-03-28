import Foundation


//always value
let myBool: Bool = false

//we don't know if value is there, but if there is, it is a Bool
var myOtherBool: Bool? = nil

/*print(myOtherBool) 
myOtherBool = true
print(myOtherBool)
myOtherBool = false
print(myOtherBool)
myOtherBool = nil
print(myOtherBool)
*/
let newValue: Bool? = myOtherBool

//value of myOtherBool (if there is one), otherwise false
let newValue2: Bool = myOtherBool ?? false

print("New value 2: \(newValue2.description)")

var myString: String? = "Hello world!"
print(myString ?? "There is no value")

myString = "New text"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")

//let newString= myString ?? "some default value"

//-------------------------------------------------------------

var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}

func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium2()

//print(isPremium.description)

func checkIfUserIsPremium3() -> Bool {
    if let newValue = userIsPremium {
        return newValue
    } else {
        return false
    }
}

func checkIfUserIsPremium4() -> Bool {
    
    if let newValue = userIsPremium {
        return newValue
    }
    return false
}

func checkIfUserIsPremium5() -> Bool {
    
    if let userIsPremium {
        return userIsPremium
    }
    return false
}

func checkIfUserIsPremium6() -> Bool {

    guard let newValue = userIsPremium else {
        return false
    }
    return newValue
}

func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}
//-------------------------------------------------------------

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

func checkIfUserIsSetUp() -> Bool {

    if let IsNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favoriteMovie = userFavoriteMovie {
        //userIsNew = Bool and
        //userDidCompleteOnboarding = Bool and
        //userFavoriteMovie = String
        return getUserStatus(userIsNew: IsNew, userDidCompleteOnboarding: didCompleteOnboarding, userFavoriteMovie: favoriteMovie)
    } else {
        //userIsNew = nil or
        //userDidCompleteOnboarding = nil or
        //userFavoriteMovie = nil
        return false
    }

}

func checkIfUserIsSetUp2() -> Bool {
    guard let IsNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favoriteMovie = userFavoriteMovie else {
        return false
    }
    return getUserStatus(userIsNew: IsNew, userDidCompleteOnboarding: didCompleteOnboarding, userFavoriteMovie: favoriteMovie)
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool
{   
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    return false

}

//optional chaining

func getUserName() -> String? {
    let userName = "Piotr"
    return userName
}
func getTitle() -> String {
    return "title"
}

func getUserData() {
    let userName = getUserName()
    let count = username?.count

    let title: String = getTitle()
    let count2 = title.count

    //if username has value, and first character in username has value, return the value of isLowercase
    let firstCharacterIsLowercase = username?.first?.isLowercase ?? false

    //I will get the count cos i know 100% that username is not nil
    let count3: Int = username!.count
}

