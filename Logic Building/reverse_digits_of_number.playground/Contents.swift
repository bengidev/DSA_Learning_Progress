// Write a program to reverse digits of a number
//
// Given an Integer n, find the reverse of its digits.
//
// Examples:
//
// Input: n = 122
// Output: 221
// Explanation: By reversing the digits of number, number will change into 221.
//
// Input: n = 200
// Output: 2
// Explanation: By reversing the digits of number, number will change into 2.
//
// Input: n = 12345
// Output: 54321
// Explanation: By reversing the digits of number, number will change into 54321.
//
//
//
// Reversing Digit by Digit
//

class Gfg: AnyObject {
    static func reverseDigits(_ n: Int) -> Int {
        // This idea for this approach is to repeatedly extract the last digit of n using the modulus operator
        // (n % 10) and appending it to the reverse number (revNum).
        // After extracting the digit, the number n is reduced by dividing it by 10 (n = n / 10).
        // This process continues until n becomes 0. Finally, the reversed number (revNum) is returned.
        //

        // Time Complexity - O(log n)
        // Space Complexity - O(1)

        var number = n
        var reverseNumber = 0

        while number > 0 {
            reverseNumber = reverseNumber * 10 + (number % 10)
            number = number / 10
        }

        return reverseNumber
    }

    static func reverseDigits(_ n: Int, revNum: inout [Int], basePos: inout [Int]) -> Int {
        // This  approach uses a recursive function reverseDigits called with the number n and
        // an accumulator variable revNum to store the reversed number,
        // and basePos to keep track of the place value (ones, tens, hundreds, etc.).
        // In each recursive call, the function processes the current digit by dividing n by 10
        // to reduce it and adding the last digit (n % 10) to revNum, scaled by the basePos.
        // The basePos is then multiplied by 10 to move to the next place value.
        //

        // Time Complexity - O(log n)
        // Space Complexity - O(log n)
        
        if n > 0 {
            // We discard the return value of the recursive call ('_ =')
            // because the logic relies on the 'inout' updates happening inside.

            _ = reverseDigits(n / 10, revNum: &revNum, basePos: &basePos)

            // Original Logic: Update the state arrays
            revNum[0] += (n % 10) * basePos[0]
            basePos[0] *= 10
        }

        // Return the current value inside the array
        return revNum[0]
    }
    
    static func reverseDigits(stringNumber: Int) -> Int {
        // This approach reverses a number by converting it into a string, reversing the string,
        // and then converting it back into an integer. This avoids manual digit manipulation
        // by leveraging string operations. The string reversal is done using a built-in function,
        // and the result is then converted back to an integer and returned.
        // This method is straightforward but requires extra space for the string conversion.
        
        // Time Complexity - O(log n)
        // Space Complexity - O(1)
        
        var str = String(stringNumber)
        var result = String(str.reversed())
        
        return Int(result) ?? 0
    }
}

// Example Usage:

// let result = Gfg.reverseDigits(12345)

// let result = Gfg.reverseDigits(stringNumber: 12345)

var myRevNum = [0]
var myBasePos = [1]

let result = Gfg.reverseDigits(12345, revNum: &myRevNum, basePos: &myBasePos)
print("reverseDigits result: \(result)")

// reverseDigits result: 54321
