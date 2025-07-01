protocol BuildingDescription {
    var howManyRooms: Int { get set}
    var costs: Int { get set}
    var nameOfEstateAgent: String {get set}
    
    func descriptionOfChoosenBuilding()
}

struct House: BuildingDescription {
    var howManyRooms: Int
    var costs: Int
    var nameOfEstateAgent: String

    func descriptionOfChoosenBuilding() {
        print("Chosen house has \(howManyRooms) rooms, costs \(costs)$ and is saled by \(nameOfEstateAgent)")
    }
}
var house1 = House(howManyRooms: 3, costs: 500_000, nameOfEstateAgent:"USA Estate")
house1.descriptionOfChoosenBuilding()

struct Office: BuildingDescription {
    var howManyRooms: Int
    var costs: Int
    var nameOfEstateAgent: String

    func descriptionOfChoosenBuilding() {
        print("Chosen office has \(howManyRooms) rooms, costs \(costs)$ and is saled by \(nameOfEstateAgent)")
    }
}

var office1 = Office(howManyRooms: 5, costs: 300_000, nameOfEstateAgent:"USA Office Sales")
office1.descriptionOfChoosenBuilding()


