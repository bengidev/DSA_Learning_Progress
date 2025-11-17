import UIKit

public enum AlgorithmType {
    case naive
    case optimal
}

public class Gfg: AnyObject {
    public static func closestFactorialNumber(n: Int, m: Int, type: AlgorithmType = .naive) -> Int {
        if type == .naive {
            // find the quotient
            var closest = 0
            var minDifference = Int.max
            
            // check numbers around n
            for i in (n - abs(m)...(n + abs(m))) {
                if (i % m == 0) {
                    var difference = abs(n - i)
                    
                    if ((difference < minDifference) || (difference == minDifference && abs(i) > abs(closest))) {
                        closest = i
                        minDifference = difference
                        
                        print("closest: \(closest)")
                        print("minDifference: \(minDifference)")
                    }
                }
            }
            
            return closest
        } else {
            // By finding Quotient - O(1) Time and O(1) Space
            
            // find the quotient
            let q = n / m
            print("quotient: \(q)")
            
            // 1st possible closest number
            let n1 = m * q
            print("1st possible closest number: \(n1)")
            
            // 2nd possible closest number
            let n2 = (n * m) > 0 ? (m * (q - 1)) : (m * (q + 1))
            print("2nd possible closest number: \(n2)")
            
            // return n1 value if match the required closest number or return the value of n2
            if (abs(n - n1) < abs(n - n2)) {
                return n1
            } else {
                return n2
            }
        }
    }
}

// Drive code
let result = Gfg.closestFactorialNumber(n: 13, m: 4, type: .optimal)
print("closestFactorialNumber: \(result)")

// quotient: 3
// 1st possible closest number: 12
// 2nd possible closest number: 8
// closestFactorialNumber: 12
