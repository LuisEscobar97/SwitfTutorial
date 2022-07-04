import UIKit

func greeting(person: String)-> String {
    let greet = "Hola, \(person)! "
    return greet
}

greeting(person: "KKKKK")


func greeting(person: String, isMale: Bool)-> String {
    if isMale {
    return  "Hola hombre, \(person)! "
    }else{
    return "Hola mujer, \(person)! "
    }
}
greeting(person: "luis", isMale: false)

func geet2(person: String){
    print("Hola \(person)")
}

geet2(person: "Sam")

func minMax (array:[Int])-> (min: Int, maxs: Int){
    var currentMin = array[0]
    var currentMax = array[0]
    
    for values in array[1..<array.count]{
        if values < currentMin{
            currentMin=values
        }else if values>currentMax{
            currentMax=values
        }
    }
    return (currentMin,currentMax)
}

minMax(array: [1,3,5,9,10,7,2,39,7431,351,0])

func someFunction(f1 firtsParmaName: Int, f2 secondParamName: Int){
    print(firtsParmaName + secondParamName)
}

func greeeting(_ person: String, from hometown: String)-> String{
    return "Hola \(person) un placer que nos visites de \(hometown)"
}
greeeting("Luis", from: "Lerma")

//Parámetros tipo inout
func swapTwoInts(_ a: inout Int,_ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7
print("someInt var \(someInt) y otherInt vale \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("someInt var \(someInt) y otherInt vale \(otherInt)")


//funciones como tipo de dato, algo parecido pasa en javascript

func addTwoInts(_ a:Int, _ b: Int)->Int{
    return a+b
}

func multiplyTwoInts(_ a:Int, _ b: Int)->Int{
    return a*b
}

var mathfunctions:(Int,Int)->Int = multiplyTwoInts
mathfunctions(5,6)

func printMathFunction(_ mathfunctions:(Int,Int)->Int,_ a:Int, _ b: Int){
    print("resultado es: \(mathfunctions(a,b))")
}

printMathFunction(multiplyTwoInts, 7, 8)


func chooseStepFunction(_ backward: Bool)->(Int)->Int{
    func forWard(_ a:Int)->Int{
        return a+1
    }

    func backWard(_ a:Int)->Int{
        return a-1
    }

    return backward ? backWard : forWard
}

var value = -7
let moveNearZero = chooseStepFunction( value>0)
while value != 0{
    print("\(value)....")
    value = moveNearZero(value)
}
print("Cerooo!!!!")




