import UIKit

// Check Even or Odd

// Examples
// Input: n = 15
// Output: false
// Explanation: 15 % 2 = 1, so 15 is odd .
//
// Input: n = 44
// Output: true
// Explanation: 44 % 2 = 0, so 44 is even.

public class Gfg: AnyObject {
    /// We can check the remainder when divided by 2. If the remainder is 0, the number is even, otherwise it is odd.
    public static func isEven(_ n: Int) -> Bool {
        // finding the remainder of n
        let remainder = n % 2
        
        // if remainder is equal to zero, than it's even
        // else than it's odd
        return (remainder == 0) ? true : false
    }
}

let result = Gfg.isEven(11)
print("The result is: \(result)")

