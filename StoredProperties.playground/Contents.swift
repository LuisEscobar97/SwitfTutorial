import UIKit

struct FixedLengthRange{
    var fisrtValue : Int
    let length : Int
}
var rangeOfItem = FixedLengthRange(fisrtValue: 0, length: 3)

rangeOfItem.fisrtValue = 6

let rangeOfForuItems = FixedLengthRange(fisrtValue: 0, length: 3)
//rangeOfForuItems.fisrtValue = 6

//Lazy Properties

class DataInmpoted{
    var fileName = "data.txt"
}
class DataManager{
    lazy var importer = DataInmpoted()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Algo de datos")
manager.data.append("Muchos mas datos")
manager
manager.importer.fileName

//Computed properties

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point{
        get{
            Point(x: origin.x + size.width/2, y: origin.y + size.height/2)
        }
        set{
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center
let initialSquareCenter = square.center
square.center = Point(x: 18, y: 3)
square.center
