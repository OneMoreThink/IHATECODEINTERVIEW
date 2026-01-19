# 226. Invert Binary Tree - Interview Walkthrough

- **Link:** [https://leetcode.com/problems/invert-binary-tree/](https://leetcode.com/problems/invert-binary-tree/)

---

_This document simulates how you might articulate your thought process for this problem during a live interview._

### 1. Clarifying the Problem

"Okay, the task is to invert a binary tree. This means for every node in the tree, its left child becomes its right child, and its right child becomes its left child. I'll just confirm my understanding: I need to mutate the existing tree, swapping the left and right children for every single node, correct? And what should I return? The root of the modified tree? Okay, got it. What about an empty tree, if the root is null? I should probably just return null in that case."

### 2. Proposing the Solution (Recursive Approach)

"This problem seems like a perfect fit for a recursive solution. A tree is a recursive data structure, so many tree problems can be solved by breaking them down into smaller, identical subproblems.

My thinking is this: to invert a tree, I need to invert the subtrees rooted at its left and right children, and then swap the children themselves. This suggests a 'post-order' traversal-like approach to the modification."

### 3. Walking Through the Algorithm

"Here's the recursive algorithm I'm planning:

1.  I'll define a function, let's call it `invertTree`, that takes a tree node as input.
2.  The **base case** for the recursion will be if the node is `null`. If it is, we've reached the end of a branch, and we can simply return `null`.
3.  For a non-null node, I will first make recursive calls on its children. I'll call `invertTree` on the left child, and `invertTree` on the right child. This will ensure that the entire left and right subtrees are fully inverted first.
4.  After the recursive calls return, I'll be back at the current node. Now, I'll perform the **swap**: I'll swap the node's left and right child pointers.
5.  Finally, I'll return the current node.

By starting from the bottom of the tree and swapping on the way up, we ensure the entire tree gets inverted correctly. For example, for a node, we first invert its left subtree completely, then invert its right subtree completely, and then we swap these two now-inverted subtrees."

### 4. Stating Final Complexity

"Let's analyze the complexity.
*   **Time Complexity:** The function will visit each node in the tree exactly once. Therefore, the time complexity is **O(n)**, where 'n' is the number of nodes in the tree.
*   **Space Complexity:** The space complexity is determined by the depth of the recursion stack. In the average case for a balanced tree, this will be O(log n). However, in the worst case of a completely skewed tree (where it's essentially a linked list), the recursion depth could be 'n'. So, the space complexity is **O(h)**, where 'h' is the height of the tree, which can be O(n) in the worst case."
