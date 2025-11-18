import UIKit

// Swap Two Numbers

// Given two numbers a and b, the task is to swap them.
//
// Examples:
//
// Input: a = 2, b = 3
// Output: a = 3, b = 2
//
// Input: a = 20, b = 0
// Output: a = 0, b = 20
//
// Input: a = 10, b = 10
// Output: a = 10, b = 10

public class Gfg: AnyObject {
    public static func swapTwoNumbers(a: NSNumber, b: NSNumber) -> (NSNumber, NSNumber) {
        let temp = a
        let aSwap = b
        let bSwap = temp
        
        return (aSwap, bSwap)
    }
}

let result = Gfg.swapTwoNumbers(a: 4, b: 7)
print("swapTwoNumbers result: \(result)")

// swapTwoNumbers result: (7, 4)

