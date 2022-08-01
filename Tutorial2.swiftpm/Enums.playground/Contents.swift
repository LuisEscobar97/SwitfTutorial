import UIKit

enum myMusic {
    case Jazz
    case Clasic
    case Bachata
    case Salsa
    case RYB
    case Regueton
    case Rock
    case Rap
}

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, uranus, neptune
}

var directionToGo = CompassPoint.east
directionToGo = .south

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
    case .qrCode(let productCode):
        print("QR code: \(productCode).")
}
//Tambien podriamos simplificar un poco el codigo escribiendo let
//al principio de la declaracion de cada caso
switch productBarcode {
    case let .upc(numberSystem, manufacturer, product, check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
    case let .qrCode(productCode):
        print("QR code: \(productCode).")
}
