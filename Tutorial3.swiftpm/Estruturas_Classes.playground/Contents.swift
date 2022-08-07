import UIKit

//Struc vs class

struct SomeStruct {
    // La definición de la estructura
}

class SomeClass {
    // La definición de la clase
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlace = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

//someResolution.width = 1280    // esto no se puede hacer porque fue declarada como constante.

someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)

let vga = Resolution(width: 640, height: 500)
vga.height
vga.width

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
print("\(cinema.height) x \(cinema.height)")
cinema.height=2048
print("\(cinema.height) x \(cinema.height)")
print("\(hd.height) x \(hd.height)")

//classes

let tenEighty = VideoMode()
tenEighty.name = "1082"
tenEighty.frameRate = 20.0
tenEighty.resolution = hd
tenEighty.interlace = true
tenEighty.frameRate

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
alsoTenEighty.frameRate
tenEighty.frameRate
