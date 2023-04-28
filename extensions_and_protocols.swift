
class Car {

  var modelName: String
  var engineCapacity: String
  var modelYear: Int
  var fuelCapacity: Int

  init(modelName: String, engineCapacity: String, modelYear: Int, fuelCapacity: Int) {
    self.modelName = modelName
    self.engineCapacity = engineCapacity
    self.modelYear = modelYear
    self.fuelCapacity = fuelCapacity
  }

  func showCarFuelDetails() {
    print("\(modelName) - \(fuelCapacity)")
  }
}

let carOne = Car(modelName: "Maruti SWIFT", engineCapacity: "1500 dd", modelYear: 2022, fuelCapacity: 35)
let carTwo = Car(modelName: "CRETA", engineCapacity: "2200 cc", modelYear: 2023, fuelCapacity: 45)

carOne.showCarFuelDetails()
carTwo.showCarFuelDetails()
carOne.showEngineCapacity()
carTwo.showModelYear()
carTwo.randomCarFeature()

print("----------")
// Extensions - it is used to add more functionalities in an existing class / struct
// You can't add properties / variables through extensions, only functions you can add through extensions

extension Car {
  func showEngineCapacity() {
    print("\(modelName) - \(engineCapacity)")
  }

  func showModelYear() {
    print("\(modelName) - \(modelYear)")
  }
}





// Protocol: set of rules
// you can only define function definitions or prototype but not body 
// you can't implement functions here
// The classes those are cinfiming these protocols will implement the function bodies 

protocol SmartPhone {
  
  func callingFeature() -> String
  func messagingFeature()
  func cameraFeature(pixelValue: String)
  
}


class MotorolaSmartPhones: SmartPhone {

  func callingFeature() -> String {
    print("Motorola implemented calling feature")
    return "Noise Cancellation - 20db"
  }

  func messagingFeature() {
    print("Motorola implemented messaging feature")
  }

  func cameraFeature(pixelValue: String) {
    print("Motorola implemented camera feature wih \(pixelValue)")
  }

  func handAndMotionGestures() {
    print("Motorola implemented gesture feature")
  }

  func anyFancyFeature() {
    print("Motorola implemented some fancy feature")
  }
}

let motorolaPhone = MotorolaSmartPhones()

// print(motorolaPhone.callingFeature())
let noiseCancellationValue = motorolaPhone.callingFeature()
print(noiseCancellationValue)

motorolaPhone.handAndMotionGestures()
motorolaPhone.cameraFeature(pixelValue: "45 MP")

class SamsungPhones: SmartPhone {

  func callingFeature() -> String {
    print("Samsung implemented calling feature")
    return "Noise Cancellation - 25db"
  }

  func messagingFeature() {
    print("Samsung implemented messaging .. feature")
  }

  func cameraFeature(pixelValue: String) {
    print("Samsung implemented camera .. feature wih \(pixelValue)")
  }

  func samsungRelatedFeatures() {
    print("Samsung implemented something added samsung related features")
  }
}

print("----------")

let samsungPhoneM30 = SamsungPhones()
print(samsungPhoneM30.callingFeature())
samsungPhoneM30.samsungRelatedFeatures()
samsungPhoneM30.cameraFeature(pixelValue: "32 MP")



extension Car {

  func randomCarFeature() {
    print("\(modelName) - new feature arrived")
  }
  
}
