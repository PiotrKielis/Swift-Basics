import Foundation

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

var myFirstDictionary: [String : Bool] = [
    "Apple" : true,
    "Orange" : false, 
    "Banana" : true]
print(myFirstDictionary)

let item = myFirstDictionary["Apple"]
print(item)

let item2 = myFirstDictionary["Peach"]//safely typecasted to nil
print(item2)

var mySecondDictionary: [Int : String] = [
    0 : "Red",
    1 : "Orange",
    101 : "Red"//2 of the same value with different keys is allowed
]

print(mySecondDictionary[77])//here also safely typecasted to nil

mySecondDictionary[50] = "Green"//adding a new key-value pair
print(mySecondDictionary)

mySecondDictionary.removeValue(forKey: 101)
print(mySecondDictionary)

//mySecondDictionary.removeAll()

struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "1", title: "Hello World", likeCount: 100),
    PostModel(id: "2", title: "Swift Programming", likeCount: 200),
    PostModel(id: "3", title: "iOS Development", likeCount: 300),
    PostModel(id: "4", title: "SwiftUI", likeCount: 400)
]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

var postDict: [String : PostModel] = [
    "1" : PostModel(id: "1", title: "Hello World", likeCount: 100),
    "2" : PostModel(id: "2", title: "Swift Programming", likeCount: 200),
    "3" : PostModel(id: "3", title: "iOS Development", likeCount: 300),
    "4" : PostModel(id: "4", title: "SwiftUI", likeCount: 400)
]

let myNewPost = postDict["1"]
print(myNewPost)