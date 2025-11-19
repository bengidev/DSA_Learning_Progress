import UIKit

// Nth term of AP from First Two Terms
//
// Given two integers a1 and a2, the first and second terms of an Arithmetic Series respectively,
// the problem is to find the nth term of the series.
//
// Examples :
//
// Input : a1 = 2,  a2 = 3,  n = 4
// Output : 5
// Explanation : The series is 2, 3, 4, 5, 6, ....   , thus the 4th term is 5.
//
// Input : a1 = 1, a2 = 3, n = 10
// Output : 19
// Explanation:  The series is: 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21..... Thus,10th term is 19.

public enum AlgorithmType {
    case naive
    case optimal
}

public class Gfg: AnyObject {
    public static func nThArithmeticSeries(a1: Int, a2: Int, total: Int, type: AlgorithmType = .naive) -> Int {
        if type == .naive {
            // In an Arithmetic Series, the difference between all pair of consecutive terms is same,
            // for example, 2, 5, 8, 11, 14,,,,,
            // The common difference is 3.
            //
            // Find the common difference of the series, common difference d = a2 - a1
            // Run a loop to iterate over each term in the series from a1,
            // keep adding common difference d until the n-th term is reached
            //
            // Time Complexity - O(n)
            // Auxiliary Space - O(1)
            
            var result = a1
            var formula = a2 - a1
            
            for i in 1..<total {
                result += formula
            }
            
            return result
        } else {
            // To find the nth term in the Arithmetic Progression series we use the simple formula .
            //
            // We know the Arithmetic Progression series is like =  2, 3, 4, 5, 6. …. …
            // In this series 2 is the first term and 3 is the second term of the series .
            // Common difference = a2 - a1 =  3 – 2 = 1 (Difference common in the series).
            // so we can write the series as :
            // t1 = a1
            // t2 = a1 + (2-1) * d
            // t3 = a1 + (3-1) * d
            // .
            // .
            // .
            // tN = a1 + (n-1) * d
            // tN = a1 + (n-1) * (a2-a1)
            
            // using formula to find the
            // Nth term t(n) = a(1) + (n-1)*d
            
            return (a1 + (total - 1) * (a2 - a1))
        }
    }
}

// Drive code
let result = Gfg.nThArithmeticSeries(a1: 5, a2: 9, total: 5,  type: .optimal)
print("nThArithmeticSeries: \(result)")

// nThArithmeticSeries: 21

