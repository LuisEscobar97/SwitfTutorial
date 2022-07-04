import UIKit

//Arrays

var someInts = [Int]()
someInts.append(31)

var someDoubles = Array(repeating: 3.1415, count: 7)

var moreDoubles = Array(repeating: 2.2, count: 4)
var aLotOfDoubles = someDoubles + moreDoubles

var shoppingList : [String] = ["leche","arroz","azucar","cebolla"]

if shoppingList.isEmpty {
    print("esta vacia la lista")
}else {
    print("No esta vacia")
}

shoppingList.append("coca")
shoppingList += ["tortilla","salsa"]

shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja","platano", "mago"]

for i in shoppingList.indices{
    print("elemnto de la lista \(shoppingList[i])")
}
for item in shoppingList{
    print(item)
}
for (idx,item) in shoppingList.enumerated(){
    print("item \(idx): \(item)")
}
shoppingList.remove(at: 1)
shoppingList.removeLast()
shoppingList.removeFirst()

//collections

var letter = Set<Character>()
letter.insert("a")
letter.insert("b")
letter.insert("c")
letter.insert("j")
letter.insert("w")
letter.insert("q")
letter

if let elemtoeliminado = letter.remove("z"){
    print("elemnto eliminado")
}else{
    print("no se pudo eliminar el elemento")
}
if letter.contains("b"){
    print("si existe el elemnto")
}else{
    print("no exite el elemnto")
}

for ite in letter.sorted(){
    print(ite)
}
//conjuntos

let oddDigits : Set = [1,3,5,7,9]
let evenDigits : Set = [0,2,4,6,8]
let primeNumbers : Set = [2,3,5,7]

//union
oddDigits.union(evenDigits).sorted()

//intersections
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

//resta
oddDigits.subtracting(primeNumbers).sorted()

//resta simentrica
oddDigits.symmetricDifference(primeNumbers).sorted()


//diccionarios o tuplas

var namOfInteger =  [Int: String]()
namOfInteger[15] = "Quince"

var airports: [String:String] = ["YYZ":"Toronto","DUB":"Subling" , "PM1": "Mallorca"]
airports.count
airports["LHC"] = "Londos 1"
airports["LHC"]="Londos 2"

if let olValue = airports.updateValue("Dubli airport", forKey: "DUB"){
    print("el antiguo valor del \(olValue) se cambio por \(airports["DUB"]!)")
}

for (isa,ite) in airports{
    print("\(isa):\(ite)")
}

for keyss in airports.keys{
    print("las llaves serian \(keyss)")
    
}
let airportsKeys = [String](airports.keys)
