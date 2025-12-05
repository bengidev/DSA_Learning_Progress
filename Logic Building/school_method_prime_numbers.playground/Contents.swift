import UIKit

// Primality Test
//
// Given a positive integer, check if the number is prime or not.
// A prime is a natural number greater than 1 that has no positive divisors other than 1 and itself.
// Examples of the first few prime numbers are {2, 3, 5, ...}
//
// Examples :
//
// Input:  n = 11
// Output: true
//
// Input:  n = 15
// Output: false
//
// Input:  n = 1
// Output: false
//

enum AlgorithmType {
    case school
    case schoolOptimize
    case schoolMaximize
}

final class Gfg: AnyObject {
    static func isPrimeNumber(of n: Int, type: AlgorithmType = .school) -> Bool {
        if type == .school {
            // Time complexity: O(n)
            // Auxiliary Space: O(1)
            //
            // corner case
            if n <= 1 { return false }

            // check from 2 to n-1
            // if n can be divided to 0, it will be false
            for i in 2 ..< n {
                print("n: \(n)")

                if n % i == 0 { return false }
            }

            return true
        } else if type == .schoolOptimize {
            // Time Complexity: O(√n)
            // Auxiliary Space: O(1)
            //
            // corner case
            if (n <= 1) { return false }
            
            // check from 2 to square root of n
            // instead of checking till n, we can check till √n
            // because a larger factor of n must be a multiple of a smaller factor
            for i in 2...n where i * i <= n {
                if (n % i == 0) { return false }
            }
            
            return true
        } else if type == .schoolMaximize {
            // Time Complexity: O(√n)
            // Auxiliary Space: O(1)
            
            // It is based on the fact that all primes greater than 3 are of the form 6k ± 1,
            // where k is any integer greater than 0.
            // This is because all integers can be expressed as (6k + i),
            // where i = −1, 0, 1, 2, 3, or 4. And note that 2 divides (6k + 0),
            // (6k + 2), and (6k + 4) and 3 divides (6k + 3).
            // So, a more efficient method is to test whether n is divisible by 2 or 3,
            // then to check through all numbers of the form 6k ± 1 <= √n.
            // This is 3 times faster than testing all numbers up to √n.
            //
            
            // since 2 and 3 are prime
            if (n == 2 || n == 3) { return true }
            
            // if n<=1 or divided by 2 or 3 then it can not be prime
            if (n <= 1 || n % 2 == 0 || n % 3 == 0) { return false }
            
            // To check through all numbers of the form 6k ± 1
            for i in stride(from: 5, through: n, by: 6) {
                if i * i > n { break }
                
                if (n % i == 0 || n % i + 2 == 0) { return false }
            }
            
            return true
            
        } else {
            return false
        }
    }
}

// driver program
let result = Gfg.isPrimeNumber(of: 11, type: .schoolMaximize)
print("result: \(result)")

// result: true

