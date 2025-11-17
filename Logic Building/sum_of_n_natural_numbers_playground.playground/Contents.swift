import UIKit

public enum ExecutionType {
    case iterative
    case induction
}


// Given a positive integer n, find the sum of the first n natural numbers.

// Examples :

//Input: n = 3
//Output: 6
//Explanation: 1 + 2 + 3 = 6
//
//Input: n = 5
//Output: 15
//Explanation:  1 + 2 + 3 + 4 + 5 = 15

public class Gfg: AnyObject {
    public static func calculateSumOfNaturalNumbers(n: Int, type: ExecutionType) -> Int {
        if type == .iterative {
            // Using Loop - O(n) Time and O(1) Space
            var sum = 0
            
            for i in 1...n {
                sum += i
            }
            return sum
        } else {
//            Formula Based Method O(1) Time and O(1) Space
//            Sum of first n natural numbers = (n * (n+1)) / 2
//
//            For example: n = 5
//            Sum = (5 * (5 + 1)) / 2 = (5 * 6) / 2 = 30 / 2 = 15
            
            return n * (n + 1) / 2
        }
    }
}

// Drive code
let result = Gfg.calculateSumOfNaturalNumbers(n: 11, type: .induction)
print("The result of sum of natural number is: \(result)")

// The result of sum of natural number is: 66
