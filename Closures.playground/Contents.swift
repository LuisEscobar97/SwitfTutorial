import UIKit

//1-Global
//2.Nested

let names = ["Christian","Luis","Angel","Juan Gabriel", "Fredy"]


var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2})

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
reversedNames = names.sorted(by: { $0 > $1 } )
reversedNames = names.sorted(by: >)
