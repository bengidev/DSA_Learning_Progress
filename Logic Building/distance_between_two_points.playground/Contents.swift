import UIKit

// Program to calculate distance between two points
//
// Examples:
//
// Input : x1, y1 = (3, 4)
//            x2, y2 = (7, 7)
// Output : 5
//
// Input : x1, y1 = (3, 4)
//            x2, y2 = (4, 3)
// Output : 1.41421
//

// Calculate the distance between two points.
//
// We will use the distance formula derived from Pythagorean theorem.
// The formula for distance between two point (x1, y1) and (x2, y2) is:
// Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2))
//

public final class Gfg: AnyObject {
    // Function to calculate distance
    public static func distance(x1: Float, y1: Float, x2: Float, y2: Float) -> Float {
        // dedicated function called hypot for calculating the hypotenuse
        let distance = hypot(Float(x2 - x1), Float(y2 - y1))
        return distance
    }
}

// drive code
let result = Gfg.distance(x1: 3, y1: 4, x2: 7, y2: 7)
print("result: \(result)")

