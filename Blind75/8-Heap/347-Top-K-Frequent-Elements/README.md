# 347. Top K Frequent Elements - Interview Walkthrough

- **Link:** [https://leetcode.com/problems/top-k-frequent-elements/](https://leetcode.com/problems/top-k-frequent-elements/)

---

_This document simulates how you might articulate your thought process for this problem during a live interview._

### 1. Clarifying the Problem

"The problem asks for the `k` most frequent elements from an array. So if I have an array `[1,1,1,2,2,3]` and `k=2`, the elements `1` and `2` are the most frequent, so I should return `[1, 2]`. The order of the output doesn't seem to matter. I should clarify if the input array can be empty. If so, I should probably return an empty array. Also, is `k` always valid, i.e., `1 <= k <=` number of unique elements? Let's assume `k` is always valid."

### 2. Proposing the Solution (Heap-based Approach)

"This problem can be solved in a few ways. A naive approach would be to count frequencies, sort by frequency, and take the top `k`. That would be O(n log n). A more optimal approach would be to use a heap. We can use a min-heap of size `k` to keep track of the top `k` frequent elements."

### 3. Walking Through the Algorithm

"Here's the heap-based algorithm:
1.  First, I'll iterate through the input array and use a hash map to count the frequency of each number.
2.  Next, I'll create a min-heap. The heap will store pairs of `(frequency, number)`.
3.  I'll iterate through the frequency map. For each `(number, frequency)` pair, I'll push `(frequency, number)` into the min-heap.
4.  If the heap's size becomes larger than `k`, I'll pop the smallest element. This is the element with the lowest frequency among the elements currently in the heap.
5.  After iterating through all the unique numbers, the heap will contain the `k` elements with the highest frequencies.
6.  Finally, I'll extract all the elements from the heap to form the result array."

### 4. Stating Final Complexity

"Let's analyze the complexity of the heap-based approach:
*   **Time Complexity:** Counting frequencies takes O(n) time, where 'n' is the number of elements in the array. Then, we iterate through the unique elements (let's say 'm' unique elements) and perform heap operations. Each heap operation (push and pop) takes O(log k) time. So, this part is O(m log k). The total time complexity is O(n + m log k). Since m <= n, in the worst case, it's O(n log k).
*   **Space Complexity:** We need a hash map to store frequencies, which can take up to O(m) space in the worst case (all elements are unique). The heap will store at most `k` elements. So, the space complexity is O(m + k), which simplifies to O(m) or O(n) in the worst case."

### 5. Alternative Solution (Sorting-based Approach)

"Another way to solve this is to use sorting. This approach is often simpler to write.

1.  **Count Frequencies:** Just like before, use a hash map to count the frequency of each number.
2.  **Sort by Frequency:** Convert the map to a list of (number, frequency) pairs and sort this list in descending order based on the frequencies.
3.  **Take Top K:** The first `k` elements of the sorted list are the top `k` frequent elements.

*   **Time Complexity:** Counting frequencies is O(n). Sorting the `m` unique elements takes O(m log m) time. So the total time complexity is O(n + m log m). In the worst case, m=n, so it's O(n log n).
*   **Space Complexity:** O(m) or O(n) for the frequency map and the list for sorting.
"