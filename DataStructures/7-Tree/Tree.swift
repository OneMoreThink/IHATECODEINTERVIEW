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

class TreeAlgorithms {
    // DFS: In-order Traversal (Left, Root, Right)
    func inorderTraversal(_ root: TreeNode?) {
        guard let root = root else { return }
        inorderTraversal(root.left)
        print(root.val, terminator: " ")
        inorderTraversal(root.right)
    }

    // DFS: Pre-order Traversal (Root, Left, Right)
    func preorderTraversal(_ root: TreeNode?) {
        guard let root = root else { return }
        print(root.val, terminator: " ")
        preorderTraversal(root.left)
        preorderTraversal(root.right)
    }

    // DFS: Post-order Traversal (Left, Right, Root)
    func postorderTraversal(_ root: TreeNode?) {
        guard let root = root else { return }
        postorderTraversal(root.left)
        postorderTraversal(root.right)
        print(root.val, terminator: " ")
    }

    // BFS: Level-order Traversal
    func levelorderTraversal(_ root: TreeNode?) {
        guard let root = root else { return }
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
    }
}

// Example Usage
/*
 * Example Tree:
 *      4
 *     / \
 *    2   7
 *   / \
 *  1   3
 */
let root = TreeNode(4)
root.left = TreeNode(2)
root.right = TreeNode(7)
root.left?.left = TreeNode(1)
root.left?.right = TreeNode(3)

let ta = TreeAlgorithms()

print("In-order Traversal (DFS): ", terminator: "")
ta.inorderTraversal(root)
print() // Expected: 1 2 3 4 7

print("Pre-order Traversal (DFS): ", terminator: "")
ta.preorderTraversal(root)
print() // Expected: 4 2 1 3 7

print("Post-order Traversal (DFS): ", terminator: "")
ta.postorderTraversal(root)
print() // Expected: 1 3 2 7 4

print("Level-order Traversal (BFS): ", terminator: "")
ta.levelorderTraversal(root)
print() // Expected: 4 2 7 1 3
