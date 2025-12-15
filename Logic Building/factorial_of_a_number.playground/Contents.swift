import UIKit

// Factorial of a Number
//
// Given the non-negative integers n , compute the factorial of a given number.
// Note: Factorial of n is defined as n * (n -1) * (n - 2) * ... * 1, for n = 0, factorial is 1.
//
// Examples:
//
// Input: n = 5
// Output: 120
// Explanation: 5! = 5 * 4 * 3 * 2 * 1 = 120
//
// Input: n = 4
// Output: 24
// Explanation: 4! = 4 * 3 * 2 * 1 = 24
//

public enum AlgorithmType {
    case iterative
    case recursive
}

public final class Gfg: AnyObject {
    static func fractional(of n: Int, type: AlgorithmType = .iterative) -> Int {
        if type == .iterative {
            var answer = 1
            var i = 2

            for number in i ... n {
                // calculating the factorial
                answer *= number
            }

            return answer
        } else {
            // Factorial of a number n is n! = n × (n - 1)!, where (n - 1)! is the factorial
            // of the previous number. This forms the basis of recursion.
            // We define factorial(n) such that if n = 0 or n = 1, it returns 1 (base case);
            // otherwise, it returns n × factorial(n - 1).
            // Thus, the problem is broken down into smaller subproblems until
            // reaching the base case.

            var res = 1
            for i in stride(from: 2, through: n, by: 1) {
                res *= i
            }
            
            return res
        }
    }
}

// driver code
let result = Gfg.fractional(of: 5, type: .recursive)
print("result: \(result)")
