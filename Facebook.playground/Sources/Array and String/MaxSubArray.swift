import Foundation

//Find out the maximum sub-array of non negative numbers from an array.
public class MaxSubArray {
    public func testCase() {
        let solution = MaxSubArray()
        var array = [-1, -1, 3, 4]
        print(solution.maxset(&array))
    }
    private func maxset(_ A: inout [Int]) -> [Int] {
        var result: [Int] = []
        
        var current: [Int] = []
        var maxSum: Int = -1
        var curSum: Int = 0
        for (i, a) in A.enumerated() {
            if a >= 0 {
                current.append(a)
                curSum += a
            }
            if a < 0 || i == A.count - 1 {
                if curSum > maxSum {
                    maxSum = curSum
                    result = current
                }
                current = []
                curSum = 0
            }
        }
        return result
    }
}
