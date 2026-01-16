import Foundation

// The Solution class containing the logic for the LeetCode problem.
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDict: [Int: Int] = [:] // To store: [value: index]

        for (i, num) in nums.enumerated() {
            let complement = target - num
            if let complementIndex = numDict[complement] {
                // If the complement exists in the dictionary, we found the solution.
                return [complementIndex, i]
            }
            // Otherwise, add the current number and its index to the dictionary.
            numDict[num] = i
        }
        // Per the problem, a solution always exists, so this is a fallback.
        fatalError("No solution found")
    }
}

// Top-level code to test the solution.
// The debugger will start execution here.
let sol = Solution()
let nums = [2, 7, 11, 15]
let target = 9

print("Running Two Sum for Swift...")
print("Input: nums = [2, 7, 11, 15], target = 9")

let result = sol.twoSum(nums, target)

print("Output: \(result)")
