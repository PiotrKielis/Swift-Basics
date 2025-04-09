import Foundation

for x in 0..<100 {
    print(x)
}

let myArray = ["Albpha", "Beta", "Gamma", "Delta", "Epsilon"]

for item in myArray {
    print(item)
}

var secondArray : [String] = []

for item in myArray {
    print(item)

    if  item == "Gamma" {
        secondArray.append(item)
    }
}
print("-------------------------------")
print(secondArray)


struct LessonsModel {
    let title: String
    let isFavorite: Bool
}

let allLessons = [
    LessonsModel(title: "Swift", isFavorite: true),
    LessonsModel(title: "Java", isFavorite: false),
    LessonsModel(title: "Python", isFavorite: true),
    LessonsModel(title: "JavaScript", isFavorite: false)
]
var favoriteLessons: [LessonsModel] = []

for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}
print(favoriteLessons)

for (index, lesson) in allLessons.enumerated () {

    if index == 1 {
        //break
        continue
    }

    print("index: \(index) || lesson: \(lesson)")
}


