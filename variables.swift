import Foundation

//String
let myFirstItem = "Hello World!"
let myTitle = myFirstItem
print(myTitle)

//Boolean
let mySecondItem = true
let myThirdItem = false

//Date
let myDate:Date = Date()
print(myDate)

//Numeric: Int, Double, CGFloat etc.
let myFirstNumber = 1
let mySecondNumber = 2.0 //used for math
let myFirstNumberCG: CGFloat = 1.0 //used for UI

//-------------------------let_vs_var-------------------------------
//let - stała
//var - zmienna

let someConstant = true
var someVariable = true

//someConstant = false //error
someVariable = false
print(someVariable)


//if statement

var userIsPremium = true
userIsPremium = false

if userIsPremium == true {
    print("1 - User is premium") 
}

if userIsPremium {
    print("2 - User is premium") 
}

if userIsPremium {
    print("User is premium")
} else {
    print ("User is not premium")
}

if !userIsPremium {
    print("User is not premium")
}


