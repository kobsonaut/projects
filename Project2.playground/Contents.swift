import UIKit

private var hasImage = false

class Lion: CustomStringConvertible {
    let name: String
    let breed: String
    let age: Int
    let weight: Float
    let image: UIImage?
    
    init (name: String, breed: String, age: Int, weight: Float){
        self.name = name
        self.breed = breed
        self.age = age
        self.weight = weight
        self.image = nil
    }
    
    var description: String {
        var description = ""
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
        var kg: Float { return self * 0.45359 }
        return kg
    }
}


let firstLion = Lion(name: "Marian", breed: "Afrykański", age: 5, weight: 220)
let secondLion = Lion(name: "Leo", breed: "Azjatycki", age: 4, weight: 200)

let weightOfFirstLionInKg = firstLion.weight.convertToKg()
let weightOfSecondLionInKg = secondLion.weight.convertToKg()



