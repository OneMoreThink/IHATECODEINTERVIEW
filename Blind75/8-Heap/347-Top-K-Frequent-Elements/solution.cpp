#include <iostream>
#include <vector>
#include <unordered_map>
#include <queue>
#include <algorithm>

// Heap-based solution (O(n log k))
class Solution {
public:
    std::vector<int> topKFrequent(std::vector<int>& nums, int k) {
        std::unordered_map<int, int> counts;
        for (int num : nums) {
            counts[num]++;
        }

        std::priority_queue<std::pair<int, int>, std::vector<std::pair<int, int>>, std::greater<std::pair<int, int>>> min_heap;
        for (auto const& [num, count] : counts) {
            min_heap.push({count, num});
            if (min_heap.size() > k) {
                min_heap.pop();
            }
        }

        std::vector<int> result;
        while (!min_heap.empty()) {
            result.push_back(min_heap.top().second);
            min_heap.pop();
        }

        std::reverse(result.begin(), result.end());
        return result;
    }
};

// Sorting-based solution (O(n log n))
class SolutionSort {
public:
    std::vector<int> topKFrequent(std::vector<int>& nums, int k) {
        std::unordered_map<int, int> counts;
        for (int num : nums) {
            counts[num]++;
        }

        std::vector<std::pair<int, int>> sorted_counts;
        for (auto const& [num, count] : counts) {
            sorted_counts.push_back({num, count});
        }

        std::sort(sorted_counts.begin(), sorted_counts.end(), [](const std::pair<int, int>& a, const std::pair<int, int>& b) {
            return a.second > b.second;
        });

        std::vector<int> result;
        for (int i = 0; i < k; ++i) {
            result.push_back(sorted_counts[i].first);
        }

        return result;
    }
};


// Example Usage
int main() {
    Solution sol;
    std::vector<int> nums1 = {1, 1, 1, 2, 2, 3};
    int k1 = 2;
    std::vector<int> result1 = sol.topKFrequent(nums1, k1);
    std::cout << "Top " << k1 << " frequent elements (Heap solution): ";
    for (int num : result1) {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    SolutionSort solSort;
    std::vector<int> result2 = solSort.topKFrequent(nums1, k1);
    std::cout << "Top " << k1 << " frequent elements (Sort solution): ";
    for (int num : result2) {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    std::vector<int> nums2 = {1};
    int k2 = 1;
    std::vector<int> result3 = sol.topKFrequent(nums2, k2);
    std::cout << "Top " << k2 << " frequent elements (Heap solution): ";
    for (int num : result3) {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    std::vector<int> result4 = solSort.topKFrequent(nums2, k2);
    std::cout << "Top " << k2 << " frequent elements (Sort solution): ";
    for (int num : result4) {
        std::cout << num << " ";
    }
    std::cout << std::endl;


    return 0;
}