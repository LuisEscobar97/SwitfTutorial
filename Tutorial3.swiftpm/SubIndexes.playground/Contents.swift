import UIKit

struct TimeTable{
    let multiplier: Int
    
    subscript(index: Int) -> Int{
        return multiplier * index
        
    }
    
    
}
let threeYimesTable = TimeTable(multiplier: 3)

print("6x3= \(threeYimesTable[6])")

for idx in 0...100{
    print("\(idx) x 3 = \(threeYimesTable[idx])")
}

enum Planet : Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet{
        return Planet(rawValue: n)!
    }
}

let mars = Planet[2]
mars

//Matrices

struct Matrix {
    
    let rows : Int, columns : Int
    var grid : [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row:Int, column:Int) -> Bool{
        return row>=0 && column >= 0 && row < rows && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row*columns)+column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row*columns)+column] = newValue
        }
    }
    
}


var matrix = Matrix(rows: 15, columns: 15)
matrix[0, 1] = 1.5
matrix[1, 0] = 2.5
matrix

for row in 0..<matrix.rows {
    for col in 0..<matrix.columns{
        print(matrix[row, col], separator: "", terminator: " ")
    }
    print("")
}
