import Foundation

var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
    return userName
}

func getUserIsPremium() -> Bool {
    return userIsPremium
}

func getUserInfo() -> (String, Bool) {

    let name = getUserName()
    let isPremium = getUserIsPremium()
    return (name, isPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)

let info1 = getUserInfo()
//let name1 = info1.0
//let name2 = info1.1

func getUserInfo2() -> (name: String,isPremium: Bool) {

    let name = getUserName()
    let isPremium = getUserIsPremium()
    return (name, isPremium)
}

let info2 = getUserInfo2()
let name1 = info2.name
let name2 = info2.isPremium

func getUserInfo3() -> (name: String,isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo(info: (name: String,isPremium: Bool, isNew: Bool)) {

}

let info = getUserInfo3()
doSomethingWithUserInfo(info: info)