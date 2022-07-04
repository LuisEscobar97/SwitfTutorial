import UIKit
import Darwin
import Combine

var greeting = "Hello, playground"

let maximunNumberOfLogging = 3

var currenTLoginAttempt = 0

var welcomeMessage : String

welcomeMessage="Hola que tal perros"

var red, green, blue : Double

print("el numero de veces \(maximunNumberOfLogging)")

let f1: Float = 3.1415987466
let d1: Double = 3.1415987466

let dosMil : UInt16 = 2000
let one : UInt8 = 1
let dosMilUno = dosMil + UInt16(one)

//alias que hace referencia a un tipo de dato
typealias AudioSample = UInt16
var Maxamplitud : AudioSample

//booleanos

let oaranguesAreOreange = true
let foodIsDelicious = false

var isaged : Bool
 isaged=false

if isaged {
    print("peuedes entrar")
}else {
    print("no puedes entrar")
}

/// TUPLAS
let htt404error=(404,"pagina no encontrada")
let (statusCode,statusMessage)=htt404error

print("el estado es \(statusCode)")
print("el mensaje es \(statusMessage)")

let (jsuStatuCode,_) = htt404error

print("Solo el estauds code \(jsuStatuCode)")
print("es codigo de error es \(htt404error.0)")

let htt200error = (status:404,mensaje:"pagina no encontrada")
print("el codigo es \(htt200error.status)")

//Opcionales
let psobleAgeUser = "31"
let comvertAge = Int(psobleAgeUser)

var serverError : Int? = 404
 serverError = nil

if comvertAge != nil{
    print("ña edad del usuario no es nula es \(comvertAge)")
    print("ña edad del usuario no es nula es \(comvertAge!)")
}else{
    print("ña edad del usuario es nula")
}

//optional binding

if let actualEdad = comvertAge {
    print("esto quiere decir que el optional no era nil")
}else {
    print("significa que el optional es nil")
}

//unwrap implicito

let posiblestrign : String? = "un string opcional"
let forcedString : String = posiblestrign!

let assummmedString: String! = "Un string unwraped de forma implicta a partir de un optional"

// try and catch

func cabThrowerror() throws{
    // algo que puede acusar un error
}

do{
    try cabThrowerror()
        
    }catch{
        //
    }














