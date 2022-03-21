import UIKit

var b = 10
var a = 5
a = b

let (x,y)=(1,2)

if a==b{
    print("son iguales")
}else{
    print("no son iguales")
}

1 == 1
1 == 2
1 != 2

let name = "Luis"

if name == "Luis"{
    print("eres \(name)")
}else{
    print("No eres Luis")
}

(1,"Juan")<(2,"Ricardo")
(1,"Juan")<(1,"Ricardo")
(2,"Ricardo")<(2,"Juan")

let contentHeigth = 40
var hasIamge = false
var rowHigh = 0

///version de ovatos
if hasIamge {
    rowHigh = contentHeigth + 50
}else{
    rowHigh = contentHeigth + 10
}

//version con operador ternario
rowHigh = contentHeigth + (hasIamge ? 50 : 10)

//operador nil coalescing

let defaultage = 18
var userGae : Int?

var ageToBeUsed = userGae ?? defaultage
// var agageToBeUsed = userGae != nil ? userAge : defaultage

//rnagos
for idx in 1...5 {
    print(idx)
}

for idx in 1..<5 {
    print(idx)
}

let names = ["Luis","Angel","tres","dos","cuatro","cinco","seis"]

for i in 0..<names.count{
    
    print("la persona \(i) es \(names[i]) ")
    
}
for nombre in names[1...]{
    
    print("la persona es \(nombre)")
    
}
for nombre in names[...2]{
    
    print("la persona es \(nombre)")
    
}

//Operadores logicos

let allowEntry = false

if !allowEntry {
    print("Acceso denegado")
}

if !allowEntry && true {
    print("Acceso denegado")
}

if !allowEntry || false {
    print("Acceso denegado")
}
