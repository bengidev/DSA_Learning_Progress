import UIKit

public class Gfg: AnyObject {
    
    public enum ExecutionType: String {
        case iterative
        case recursive
    }
    
    /// Program for multiplication table
    ///
    /// Given a number n, we need to print its table.
    ///
    /// - of: the input number for print the multiplication table
    /// - type: the type for program execution
    ///
    public static func printTable(of number: Int, withType type: ExecutionType) {
        if type == .iterative {
            print("Iterative Multiplier \n")
            
            for i in 1...10 {
                print("\(number) * \(i) = \(number * i)")
            }
        } else {
            print("Recursive Multiplier \n")
            self.printTable(of: number)
        }
    }
    
    private static func printTable(of number: Int, recursion: Int? = nil) {
        var multiplier = recursion ?? 1
        
        // The limit of multiplication is 10
        // when multiplier reach 11, then it will bail out from the function
        if multiplier == 11 {
            return
        }
        
        print("\(number) * \(multiplier) = \(number * multiplier)")
        
        multiplier += 1
        self.printTable(of: number, recursion: multiplier)
    }
}

// Driver Code
Gfg.printTable(of: 45, withType: .recursive)
