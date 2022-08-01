import UIKit

//1-Global
//2.Nested

let names = ["Christian","Luis","Angel","Juan Gabriel", "Fredy"]


var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2})

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
reversedNames = names.sorted(by: { $0 > $1 } )
reversedNames = names.sorted(by: >)
//trailling closures
let numbers = [-9, 34 , -23, -2127 ,46, -6]

let digitNames = [0:"Cero", 1:"Uno", 2:"Dos", 3:"Tres", 4:"Cuatro", 5:"Cinco", 6:"Seis", 7:"Siete", 8:"Ocho", 9:"Nueve"]

let numbersStrings = numbers.map{ (number) -> String in
       
    var number = number
    var output = ""
    let minus = "menos"
    let negative = number
    
    number = number < 0 ? number * -1 : number

    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    }while number > 0
    output = negative < 0 ? minus + output : output
    return output
}
//cpaturar valores
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()    // 10
incrementByTen()    // 20
incrementByTen()    // 3

//escaping closures

var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
completionHandlers.count

func someFunctionWithNoneEscapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100 // El `self` le indica al closure con el modificador @escaping donde va a estar la variable `x`
        }
        someFunctionWithNoneEscapingClosure {
            x = 200 // En este caso no es necesario el `self` porque el closure se va a ejecutar ahora mismo y sabe donde va a estar la variable `x`
        }
    }
}

let instance = SomeClass()
print(instance.x)        // 10

instance.doSomething()
print(instance.x)        // 200

completionHandlers.count        // 1
completionHandlers.first?()
print(instance.x)        // 100
