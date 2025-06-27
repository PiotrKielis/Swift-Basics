struct Car {
    let model: String
    let numberOfSeats: Int
    var currentGear = 0
    
    mutating func switchGearUp() {
        if currentGear < 10 {
            currentGear += 1
        }
    }
    mutating func switchGearDown() {
        if currentGear > 0 {
            currentGear -= 1
        }
    }
    mutating func switchGear (gear: Int) {
        if gear >= 1 && gear <= 10 { 
            currentGear = gear
        } else {
            print("Given gear out of bounds")
        }
    }
}
extension Car {
    init() {
        self.model = "Vehicle 1"
        self.numberOfSeats = 5
        self.currentGear = 0
    }
}

var vehicle = Car(model: "BMW Series 1", numberOfSeats: 5)
vehicle.switchGearUp()
print(vehicle.currentGear)
vehicle.switchGearDown()
print(vehicle.currentGear)
vehicle.switchGear(gear: 7)
print(vehicle.currentGear)

var noNamedVehicle = Car()
print(noNamedVehicle)
