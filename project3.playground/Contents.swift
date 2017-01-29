import Foundation

struct InputBoxData {
    var height : Double
    var width : Double
    var length : Double
}

// Function for counting the cord length.
func cordLenght(data: InputBoxData) -> Double {
    
    let minimalValues: Double = [2 * data.height + 2 * data.width, 2 * data.height + 2 * data.length, 2 * data.width + 2 * data.length].min() ?? 0
    let boxKnot: Double = data.width * data.height * data.length
    let boxCord: Double = minimalValues + boxKnot
    
    return boxCord
}

// Function for counting the wrapping paper size.
func wrappingPaperSize(data: InputBoxData) -> Double {
    
    let boxWalls = [data.width * data.height, data.width * data.length, data.height * data.length]
    var wrappingPaper = 0.0
    
    for number in 0..<boxWalls.count
    {
        wrappingPaper += 2 * boxWalls[number]
    }
    let size: Double = wrappingPaper + (boxWalls.min() ?? 0)
    
    return size
}
var allBoxesArea = 0.0
var allBoxesCord = 0.0

// Here you can add the box sizes (height x width x length) separated by space.
var inputText = "2x3x4 2x3x4 2x3x4"

let boxes = inputText.components(separatedBy: " ")

for walls in boxes{
    
    var boxSizes = walls.components(separatedBy: "x")
    
    var sizes = InputBoxData(height: Double(boxSizes[0]) ?? 0, width: Double(boxSizes[1]) ?? 0, length: Double(boxSizes[2]) ?? 0)
    allBoxesArea += wrappingPaperSize(data: sizes)
    allBoxesCord += cordLenght(data: sizes)
}
print("To wrap all the boxes you need \(allBoxesArea) square meters of paper and \(allBoxesCord) meters of the cord.")


