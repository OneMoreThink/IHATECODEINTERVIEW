import Foundation

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        // Base case: If the node is nil, there's nothing to do.
        guard let root = root else {
            return nil
        }

        // Recursively invert the left and right subtrees.
        invertTree(root.left)
        invertTree(root.right)

        // Swap the left and right children.
        let temp = root.left
        root.left = root.right
        root.right = temp
        
        return root
    }
}

// Helper function to print the tree level by level (for verification)
func printTree(_ root: TreeNode?) {
    guard let root = root else {
        print("[empty]")
        return
    }
    var queue: [TreeNode] = [root]
    while !queue.isEmpty {
        let current = queue.removeFirst()
        print(current.val, terminator: " ")
        if let leftChild = current.left {
            queue.append(leftChild)
        }
        if let rightChild = current.right {
            queue.append(rightChild)
        }
    }
    print()
}


// Example Usage
/*
 * Original Tree:
 *      4
 *     / \
 *    2   7
 *   / \ / \
 *  1  3 6  9
 */
let root = TreeNode(4)
root.left = TreeNode(2)
root.right = TreeNode(7)
root.left?.left = TreeNode(1)
root.left?.right = TreeNode(3)
root.right?.left = TreeNode(6)
root.right?.right = TreeNode(9)

print("Original Tree (Level Order): ", terminator: "")
printTree(root)

let sol = Solution()
_ = sol.invertTree(root)

print("Inverted Tree (Level Order): ", terminator: "")
printTree(root)
/*
 * Expected Inverted Tree:
 *      4
 *     / \
 *    7   2
 *   / \ / \
 *  9  6 3  1
 */
