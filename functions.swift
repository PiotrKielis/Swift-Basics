import Foundation

func myFirstFunction() {
    print("My first function.")
    mySecondFunction()
}
func mySecondFunction() {
    print("My second function.")
}

myFirstFunction()

func getUserName() -> String {
    let username = "Piotr"
    return username
}

let name = getUserName()

//--------------------------

func showFirstScreen() {
    var userDidCompleteOnboarding = false
    var userProfileIsCreated = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)

    if status == true {
        print("Show home screen.")
    } else {
        print("Show onboarding screen.")
    }
}


func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding  && profileIsCreated {
        return true
    } else {
        return false
    }
} 

showFirstScreen()

//-----------------------------------------------------


func doSomething() -> String {
    var isNew: Bool = false  

    if isNew {
        return "New user"
    }   else {
        return "Existing user"
    }
return "If statement is not true"
}

print(doSomething())

func doSomethingElse() -> String {
    var title: String = "Star"

    //*if title is equal to Star*
    if title == "Star" {
        return "Star Wars"
    } else {
        return "Star Trek"
    }


    if title == "Star Boy"{
        return "This will never execute cos of return above"
    } //this will not print, return means "end this function"
}

print(doSomethingElse())


func checkIfTitleIsAvenger() -> Bool {
    var title: String = "Avengers"

    //*Make sure title == Avengers*
    guard title == "Avengers" else {
        return false
    }

    return true

}
print(checkIfTitleIsAvenger())


func checkIfTitleIsAvenger2() -> Bool {
    var title: String = "Avengers"

    if title == "Avengers" {
        return true
    } else {
        return false
    }
}
print(checkIfTitleIsAvenger2())


let number1 = 5
let number2 = 10 

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result  = calculateNumbers(value1: number1, value2: number2)

