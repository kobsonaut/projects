import UIKit

class Animal: CustomStringConvertible {
    let type: Type
    let name: String
    let breed: String
    let age: Int
    let weight: Float
    let image: UIImage?
    
    init (type: Type, name: String, breed: String, age: Int, weight: Float, image: UIImage?){
        self.type = type
        self.name = name
        self.breed = breed
        self.age = age
        self.weight = weight
        self.image = image
        
    }
    
    var description: String {
        var hasImage = false
        var description = ""
        description += "typ: \(self.type) - "
        description += "imię: \(self.name) - "
        description += "rasa: \(self.breed) - "
        description += "wiek: \(self.age) - "
        description += "waga: \(self.weight) - "
        if self.image != nil {
            hasImage = true
            description += "Posiada zdjęcie: \(hasImage)"
        } else {
            hasImage = false
            description += "Posiada zdjęcie: \(hasImage)"
        }
        
        return description
    }
    
}

extension Float {
    func convertToKg() -> Float {
        return self * 0.45359
    }
}

enum Type: String {
    case lion = "Lion"
    case tiger = "Tiger"
    case bear = "Bear"
}

let leo = Animal(type: Type.lion, name: "Leo", breed: "African", age: 6, weight: 220, image: nil)
let weightOfFirstLionInKg = leo.weight.convertToKg()

var imageCheck : Bool {
    return leo.image != nil
}



