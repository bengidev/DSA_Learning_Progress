import UIKit

public enum ExecutionType {
    case iterative
    case induction
}

//Given a positive integer n, we have to find the sum of squares of first n natural numbers.
//Examples :
//
//Input : n = 2
//Output: 5
//Explanation: 1^2+2^2 = 5
//
//Input : n = 8
//Output: 204
//Explanation :  1^2 + 2^2 + 3^2 + 4^2 + 5^2 + 6^2 + 7^2 + 8^2 = 204

public class Gfg: AnyObject {
    public static func calculateSumSquaresOfNaturalNumbers(number: Int, type: ExecutionType) -> Int {
        // Adding One By One - O(n) Time and O(1) Space
        // The idea for this naive approach is to run a loop from 1 to n and sum up all the squares.
        if type == .iterative {
            var sum = 0
            
            for i in 1...number {
                sum += (i * i)
            }
            return sum
        } else {
            // Using Mathematical Formulae - O(1) Time and O(1) Space
            // The idea for this approach is to use the mathematical formulae for the sum of squares of first n natural numbers.\
            //
            // 1^2 + 2^2 + ... + n^2 = n(n+1)(2n+1)/6
            //
            // We can prove this formula using induction. We can easily see that the formula is true for n = 1 and n = 2 as sums are 1 and 5 respectively.
            //
            // Let it be true for n = k-1. So sum of k-1 numbers
            // is (k – 1) * k * (2 * k – 1)) / 6

            // In the following steps, we show that it is true
            // for k assuming that it is true for k-1.

            // Sum of k numbers = Sum of k-1 numbers + k^2
            //          = (k – 1) * k * (2 * k – 1) / 6 + k^2
            //          = ((k^2 – k) * (2k – 1) + 6k^2)/6
            //          = (2k^3 – 2k^2 – k^2 + k + 6k^2)/6
            //          = (2k^3 + 3k^2 + k)/6
            //          = k * (k + 1) * (2k + 1) / 6
            
            // Avoiding the overflow:
            // In the above method, sometimes due to large value of n, the value of (n * (n + 1) * (2 * n + 1)) would overflow.
            // We can avoid this overflow up to some extent using the fact that n*(n+1) must be divisible by 2 and restructuring the formula as (n * (n + 1) / 2) * (2 * n + 1) / 3;
            
            return (number * (number + 1) / 2) * (2 * number + 1) / 3
        }
    }
}

// Drive code
let result = Gfg.calculateSumSquaresOfNaturalNumbers(number: 3, type: .induction)
print("The sum of squares of first n natural numbers: \(result)")
