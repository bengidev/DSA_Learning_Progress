import UIKit

// Sum of Digits of a Number
//
// Given a number n, find the sum of its digits.
//
// Examples :
//
// Input: n = 687
// Output: 21
// Explanation: The sum of its digits are: 6 + 8 + 7 = 21
//
// Input: n = 12
// Output: 3
// Explanation: The sum of its digits are: 1 + 2 = 3

public enum AlgorithmType {
    case naive
    case recursive
    case optimal
}

public class Gfg: AnyObject {
    public static func sumOfDigits(_ n: Int, type: AlgorithmType = .naive) -> Int {
        // [Approach 1] Digit Extraction - O(log10n) Time and O(1) Space
        //
        // We can sum the digits of a number by repeatedly extracting the last digit using n % 10,
        // adding it to the sum, and then removing it by dividing n by 10 using integer division.
        if type == .naive {
            var number = n
            var sum = 0
            
            while number != 0 {
                // Extract the last digit
                let last = number % 10
                print("last: \(last)")
                
                // Add last time digit of sum
                sum += last
                print("sum: \(sum)")
                
                // Remove the last digit
                number /= 10
                print("number: \(number)")
            }
            
            return sum
        }
        // [Approach 2] Using Recursion - O(log10n) Time and O(log10n) Space

        // We can use recursion to find the sum of digits. The idea is to extract the last digit, add it to the sum of digits of the remaining number, and repeat.
        // Base Case: If the number is 0, return 0.
        // Recursive Case: Return (n % 10) + sumOfDigits(n / 10)
        else if type == .recursive {
            var number = n
            print("number: \(number)")
            
           // Base case
            if (number == 0) { return 0 }
            
            // Recursive case
            return (number % 10) + sumOfDigits(number / 10, type: .recursive)
        }
        else {
            // [Approach 3] String Conversion
            
            // Convert the number to a string and iterate through each character (digit). For each character, subtract the ASCII value of '0' to get the actual digit, then add it to the sum.
            // Note: This method is especially useful when the number is too large to fit in standard integer types.
            
            // Function to calculate sum of digits using string conversion
            
            // Convert number to string
            let str = String(n)
            var sum = 0
            
            // Loop through each character, convert to digit, and add to sum
            for char in str {
                sum += (char.wholeNumberValue ?? 0)
                print("sum: \(sum)")
            }
            
            return sum
        }
    }
}

// Drive code
let result = Gfg.sumOfDigits(12, type: .optimal)
print("sumOfDigits: \(result)")
