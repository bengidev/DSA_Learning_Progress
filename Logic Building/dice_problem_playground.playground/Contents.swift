import UIKit

// The dice problem

// You are given a cubic dice with 6 faces. All the individual faces have a number printed on them.
// The numbers are in the range of 1 to 6, like any ordinary dice.
// You will be provided with a face of this cube, your task is to guess the number on the opposite face of the cube.

public enum AlgorithmType {
    case naive
    case optimal
}

public class Gfg: AnyObject {
    public static func oppositeFaceOfDice(n: Int, type: AlgorithmType = .naive) -> Int {
        if type == .naive {
            var result = 0
            
            if n == 1 {
                result = 6
            } else if n == 2 {
                result = 5
            } else if n == 3 {
                result = 4
            } else if n == 4 {
                result = 3
            } else if n == 5 {
                result = 2
            } else {
                result = 1
            }
            
            return result
        } else {
            // 7 is the sum of number on opposite face of dice
            //
            return 7 - n
        }
    }
}


// Drive code
let result = Gfg.oppositeFaceOfDice(n: 3, type: .optimal)
print("oppositeFaceOfDice: \(result)")
