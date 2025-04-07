import Foundation

let apple = "Apple" 
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
let fruits3: Array<String> = [apple, orange]



func doSomething(value: [String]) {

}

var fruitsArray: [String] = ["Apple", "Orange", "Banana", "Grapes"]

let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

print(fruitsArray)
fruitsArray.append("Mango")
print(fruitsArray)
fruitsArray.append(contentsOf: ["Pineapple", "Peach"])
print(fruitsArray[4])

//let firstIndex = fruitsArray.indices.first
//let lastIndex = fruitsArray.indices.last

if fruitsArray.indices.contains(7) {
    let item = fruitsArray[7]
}
else {
    print("Index out of range")
}

fruitsArray.insert("Watermelon", at: 2)
print(fruitsArray)
fruitsArray.insert(contentsOf: ["Raspberry", "Tangerine"], at: 2)
print(fruitsArray)

fruitsArray.remove(at: 3)
print(fruitsArray)

struct ProductModel {
    let title: String
    let price: Int
}

var myProducts = [
    ProductModel(title: "iPhone", price: 1000),
    ProductModel(title: "iPad", price: 800),
    ProductModel(title: "MacBook", price: 2000),
    ProductModel(title: "Apple Watch", price: 500),
]

//------------------------
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet) // Set does not print duplicates, and the order is not guaranteed



