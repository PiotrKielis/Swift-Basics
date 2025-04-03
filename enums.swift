import Foundation

struct CarModel {
    let brand: CarBrandOption
    let model: String

}

//var car1: CarModel = CarModel(brand: "BMW", model: "X5")
//var car2: CarModel = CarModel(brand: "BMW", model: "X6")
//var car3: CarModel = CarModel(brand: "Toyota", model: "Corolla")

//--------------------------------------------------------------

struct CarBrand {
    let title: String

}

enum CarBrandOption {
    case bmw
    case toyota
    case mercedes
    //case ford,bmw,toyota,mercedes
    var title: String {
        switch self {
            case .bmw:
                return "BMW"
            case .toyota:
                return "Toyota"
            case .mercedes:
                return "Mercedes"
            default:
                return "Unknown"
        }
}
}
/*
var brand1 = CarBrand(title: "BMW")
var brand2 = CarBrand(title: "Toyota")


var car4 = CarModel(brand: CarBrand(title: "BMW"), model: "X5")
var car5 = CarModel(brand: CarBrand(title: "BMW"), model: "X6")
var car6 = CarModel(brand: CarBrand(title: "Toyota"), model: "Corolla")

var car1 = CarModel(brand: .bmw, model: "X5")
var car2 = CarModel(brand: .bmw, model: "X6")
var car3 = CarModel(brand: .toyota, model: "Corolla")
*/
var bmwBrand: CarBrandOption = .bmw
var toyotaBrand: CarBrandOption = .toyota
var mercedesBrand: CarBrandOption = .mercedes

print(bmwBrand.title)