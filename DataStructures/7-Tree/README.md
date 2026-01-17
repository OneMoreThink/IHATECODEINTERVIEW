# Data Structure: Tree

A tree is a widely used hierarchical data structure that simulates a tree structure, with a root value and parent-child relationships.

##  terminologies

- **Node**: The basic unit of a tree, containing data and pointers to its children.
- **Root**: The topmost node in a tree.
- **Edge**: The link between two nodes.
- **Parent**: A node that has child nodes.
- **Child**: A node that has a parent node.
- **Leaf**: A node with no children.
- **Subtree**: A smaller tree rooted at a child of the main tree's root.
- **Depth**: The length of the path from the root to a specific node.
- **Height**: The length of the longest path from a specific node to a leaf. The height of the tree is the height of the root.

## Types of Trees

- **Binary Tree**: A tree in which each node has at most two children, referred to as the left child and the right child.
- **Binary Search Tree (BST)**: A special type of binary tree where the value of each node is greater than all values in its left subtree and less than all values in its right subtree. This property allows for efficient searching, insertion, and deletion operations (O(log n) on average).
- **Balanced vs. Unbalanced Trees**: A balanced tree (e.g., AVL Tree, Red-Black Tree) automatically maintains a limited height to ensure O(log n) performance for all operations, while an unbalanced tree can degrade to O(n) performance (equivalent to a linked list).

## Tree Traversal Algorithms

Traversal is the process of visiting each node in the tree exactly once.

### Depth-First Search (DFS)

DFS explores as far as possible down one branch before backtracking.

1.  **In-order Traversal**: `(Left, Root, Right)`
    - In a BST, this traversal visits nodes in ascending order.
2.  **Pre-order Traversal**: `(Root, Left, Right)`
    - Useful for creating a copy of a tree.
3.  **Post-order Traversal**: `(Left, Right, Root)`
    - Useful for deleting nodes safely (as you delete children before the parent).

### Breadth-First Search (BFS)

BFS explores nodes level by level.

1.  **Level-order Traversal**:
    - Visits all nodes at a given depth before moving to the next level.
    - This is typically implemented using a queue.
