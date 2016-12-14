//: Playground - noun: a place where people can play

import UIKit

class Lion: CustomStringConvertible {
    let name: String
    let breed: String
    let age: Int
    let image: UIImage?
    
    init (name: String, breed: String, age: Int){
        self.name = name
        self.breed = breed
        self.age = age
        self.image = UIImage(named: "")
    }
    
    var description: String {
        var description = ""
        description += "imię: \(self.name) - "
        description += "rasa: \(self.breed) - "
        description += "wiek: \(self.age) - "
        if (self.image == nil){
            description += "Nie posiada zdjęcia"
        } else {
            description += "Posiada zdjęcie"
        }

        return description
    }
}
let firstLion = Lion(name: "Marian", breed: "Afrykański", age: 5)
print(firstLion)
let secondLion = Lion(name: "Leo", breed: "Azjatycki", age: 4)
print(secondLion)



