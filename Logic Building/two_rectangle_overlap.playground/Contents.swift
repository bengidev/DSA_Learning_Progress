import UIKit

// Find if two rectangles overlap
//
// Given two rectangles, find if the given two rectangles overlap or not.
// Note that a rectangle can be represented by two coordinates, top left and bottom right.
// So mainly we are given following four coordinates.
//
// l1: Top Left coordinate of first rectangle.
// r1: Bottom Right coordinate of first rectangle.
// l2: Top Left coordinate of second rectangle.
// r2: Bottom Right coordinate of second rectangle.
//

// Examples:
//
// Input: l1 = { 0, 10 }, r1 = { 10, 0 }, l2 = { 5, 5 }, r2 = { 15, 0 }
// Output: Rectangles Overlap
//
// Input: l1 = { 0, 10 }, r1 = { 10, 0 }, l2 = { -10, 5 }, r2 = { -1, 0 }
// Output: Rectangles Don't Overlap
//

// Note : It may be assumed that the rectangles are parallel to the coordinate axis.
// One solution is to one by one pick all points of one rectangle and
// see if the point lies inside the other rectangle or not.
// This can be done using the algorithm discussed here.
// Following is a simpler approach. Two rectangles do not overlap if one of the following conditions is true.
// 1) One rectangle is above top edge of other rectangle.
// 2) One rectangle is on left side of left edge of other rectangle.
// We need to check above cases to find out if given rectangles overlap or not.

public struct Point: Equatable {
    let x: Double
    let y: Double
}

public final class Gfg: AnyObject {
    //  Returns true if two rectangles (l1, r1) and (l2, r2) overlap
    static func isOverlap(l1: Point, r1: Point, l2: Point, r2: Point) -> Bool {
        // If one rectangle is to the left of the other
        if l1.x > r2.x || l2.x > r1.x {
            return false
        }

        // If one rectangle is above the other
        if r1.y > l2.y || r2.y > l1.y {
            return false
        }

        return true
    }
}

let l1 = Point(x: 0, y: 10)
let r1 = Point(x: 10, y: 0)
let l2 = Point(x: 5, y: 5)
let r2 = Point(x: 15, y: 0)

if (Gfg.isOverlap(l1: l1, r1: r1, l2: l2, r2: r2)) {
    print("Rectangles Overlap")
} else {
    print("Rectangles Don't Overlap")
}

// result: Rectangles Overlap

