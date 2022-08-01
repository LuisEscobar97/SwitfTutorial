import UIKit

var greeting = "Hello, playground"

let names = ["luis","angel","luis2"]

for name in names{
    
    print("hola \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "dog": 4]

for (animal,patas) in numberOfLegs{
    print("Animal : \(animal)  -- patas : \(patas)")
    
}

let base = 2
let power = 10
var answer = 1

for idx in 0..<power{
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minuteInterval = 5

for tckMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tckMark)")
    
}

// bucles while
var i = 0
while i <= 10{
    
    i += 1
    print("i: \(i)")
}

repeat{
    i += 1
}while i <= 10

print(i)


