import Foundation

// Check if a number is a power of another number
//
// Examples :
//
// Input:  x = 10, y = 1
// Output: True
// x^0 = 1
//
// Input:  x = 10, y = 1000
// Output: True
// x^3 = 1
//
// Input:  x = 10, y = 1001
// Output: False
//

enum AlgorithmType {
    case naive
    case exponent
}

final class Gfg: AnyObject {
    // [Naive Approach] Repeated Multiplication Method
    //
    // This approach checks whether a number y is a power of another number x by repeatedly multiplying x
    // until it either matches or exceeds y. It starts with an initial value of 1 and
    // keeps multiplying it by x in a loop. If the resulting value becomes equal to y,
    // then y is a power of x; otherwise, if it exceeds y without a match,
    // the function returns false. This method efficiently verifies powers by iteratively
    // computing exponential values instead of using logarithms or recursion.
    //
    
    // Time complexity: O(Logxy)
    // Auxiliary space: O(1)
    
    static func isPower(from x: Int, of y: Int, type: AlgorithmType = .naive) -> Bool {
        if type == .naive {
            // The only power of 1 is 1 itself
            if (x == 1) { return y == 1 }
            
            // Repeatedly compute power of x
            var power = 1
            while (power < y) {
                power *= x
            }
            
            // Check if power of x becomes y
            return (power == y)
        } else if type == .exponent {
            var power = x
            
            // The only power of 1 is 1 itself
            if (x == 1) { return y == 1 }
            if (y == 1) { return true }
            
            // Repeatedly compute power of x
            while (power < y) {
                power *= power
            }
            
            if (power == y) { return true }
            
            var low = x
            var high = power
            
            while low <= high {
                var mid = low + (high - low) / 2
                var res = pow(2.0, 3.0)
            }
        }
    }
}

// driver code
let result = Gfg.isPower(from: 2, of: 128)
print("result: \(result)")
