import UIKit

var someString = "Hello, playground"

let multiLineStrting = """
soy luis agale\
y este es un string multilinea
y es de pruena
"""
// como escapar caracteres especiales
let wiseWords = "\" esta es una cita escapda\""

// como escribir caracteres unicode
let dolarSing = "\u{24}"

//mutabilidad e inicializacion
var emptyString = ""
var anitherStringEmpty = String()


if emptyString.isEmpty{
    print("esta vacio")
}else {
    print(" no esta vacio")
}

//Characters
let n1 = "Luis angel escobar"

for ch in n1{
    print(ch)
}

let namechars : [Character] = ["L","u","i","s"]

var nameFromChar = String(namechars)
//Indices

let greeting = "Hola, que tal"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for ids in greeting.indices{
    print("\(greeting[ids]) - \(ids)")
    print("\(greeting[ids]) ",terminator: "")
}

var welcome = "Hola"

welcome.insert("!", at:welcome.endIndex)
welcome.insert(contentsOf: ", que tal", at: welcome.index(before: welcome.endIndex))

//substrings

greeting
let indx = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<indx]
let newString = String(firstPart)

//prefijos y subfijos
let newGreeting = "Hola, soy Luis Angel"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("Adios")
