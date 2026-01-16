#include <iostream>
#include <vector>
#include <unordered_map>

// The Solution class containing the logic for the LeetCode problem.
class Solution {
public:
    std::vector<int> twoSum(std::vector<int>& nums, int target) {
        std::unordered_map<int, int> numMap; // To store: [value, index]
        for (int i = 0; i < nums.size(); ++i) {
            int complement = target - nums[i];
            if (numMap.count(complement)) {
                // If the complement exists in the map, we found the solution.
                return {numMap[complement], i};
            }
            // Otherwise, add the current number and its index to the map.
            numMap[nums[i]] = i;
        }
        // Per the problem, a solution always exists, so this is a fallback.
        return {};
    }
};

// A 'main' function to test the solution.
// The debugger will start execution here.
int main() {
    Solution sol;
    std::vector<int> nums = {2, 7, 11, 15};
    int target = 9;

    std::cout << "Running Two Sum for C++..." << std::endl;
    std::cout << "Input: nums = [2, 7, 11, 15], target = 9" << std::endl;

    std::vector<int> result = sol.twoSum(nums, target);

    if (!result.empty()) {
        std::cout << "Output: [" << result[0] << ", " << result[1] << "]" << std::endl;
    } else {
        std::cout << "No solution found." << std::endl;
    }

    return 0;
}
