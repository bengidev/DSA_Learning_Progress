import UIKit

// Check whether triangle is valid or not if sides are given
//
// Given three sides, check whether triangle is valid or not.
//
// Examples:
//
// Input :  a = 7, b = 10, c = 5
// Output : Valid
// We can draw a triangle with the given three edge lengths.
//
// Input : a = 1, b = 10, c = 12
// Output : Invalid
// We can not draw a triangle with the given three edge lengths.
//
// Approach: A triangle is valid if sum of its two sides is greater than the third side.
// If three sides are a, b and c, then three conditions should be met.
//
// (a + b) > c
// (a + c) > b
// (b + c) > a
//

// Time Complexity: O(1)
// Auxiliary Space: O(1)

public final class Gfg: AnyObject {
    public static func isValidTriangle(a: Double, b: Double, c: Double) -> Bool {
        if ((a + b) > c || (b + c) > a || (c + a) > b) {
            return true
        } else {
            return false
        }
    }
}

// driver code
let result = Gfg.isValidTriangle(a: 7, b: 10, c: 5)
print("result: \(result)")

// result: true
