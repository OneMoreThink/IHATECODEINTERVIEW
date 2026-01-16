# 1. Two Sum - Interview Walkthrough

- **Link:** [https://leetcode.com/problems/two-sum/](https://leetcode.com/problems/two-sum/)

---

_This document simulates how you might articulate your thought process for this problem during a live interview._

### 1. Clarifying the Problem

"Okay, so the goal is to find the indices of two numbers in an array that add up to a specific target. A few clarifying questions:
*   Will the input array always have a solution? (The problem says 'exactly one solution exists', which is great).
*   Can the same element be used twice? (The problem implies two different indices, so no).
*   What should I return if there's no solution? (The problem guarantees a solution, so we don't need to worry about that edge case)."

### 2. Proposing a Brute-force Solution

"My initial thought is to try the most straightforward approach, which would be a brute-force solution. I can use a nested loop. The outer loop will pick an element, and the inner loop will iterate through the rest of the array to find a second element that sums up to the target.

This would work and guarantee we find the solution. The time complexity, however, would be O(n²) because of the nested loops. The space complexity would be O(1) since we're not using any extra data structures."

### 3. Identifying the Bottleneck and Proposing Optimization

"The O(n²) complexity comes from the inner loop, which is doing a linear search for the 'complement' of each number. We can definitely optimize this search.

To make the lookup faster, I can use a hash map. A hash map provides, on average, an O(1) lookup time. The idea would be to trade some space complexity to gain a significant improvement in time complexity."

### 4. Walking Through the Optimal Algorithm

"Here's the plan for the optimized approach:
1.  I'll create a hash map to store the numbers I've seen so far and their corresponding indices. The map will look like `[value: index]`.
2.  I'll iterate through the input array just once.
3.  For each number, I'll calculate its complement by subtracting it from the target (`complement = target - current_number`).
4.  Then, I'll check if this complement already exists as a key in my hash map.
    *   If it does, it means I've found the pair! I can immediately return the index of the complement (which I'll get from the map) and the index of the current number.
    *   If it doesn't, I'll add the current number and its index to the hash map to be checked against future elements.

This way, I only need one pass through the array."

### 5. Stating Final Complexity

"This single-pass hash map approach will have a time complexity of **O(n)**, because we iterate through the array once and each hash map operation is O(1) on average. The space complexity will be **O(n)** in the worst case, as we might need to store all the elements in the hash map. This is a very efficient solution for this problem."