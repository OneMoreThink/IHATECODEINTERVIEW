#include <iostream>
#include <queue>
#include <algorithm> // For std::swap

// Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
};

class Solution {
public:
    TreeNode* invertTree(TreeNode* root) {
        // Base case: If the node is null, there's nothing to do.
        if (root == nullptr) {
            return nullptr;
        }

        // Recursively invert the left and right subtrees.
        invertTree(root->left);
        invertTree(root->right);

        // Swap the left and right children of the current node.
        std::swap(root->left, root->right);

        return root;
    }
};

// Helper function to print the tree level by level (for verification)
void printTree(TreeNode* root) {
    if (root == nullptr) {
        std::cout << "[empty]" << std::endl;
        return;
    }
    std::queue<TreeNode*> q;
    q.push(root);
    while (!q.empty()) {
        TreeNode* current = q.front();
        q.pop();
        std::cout << current->val << " ";
        if (current->left != nullptr) q.push(current->left);
        if (current->right != nullptr) q.push(current->right);
    }
    std::cout << std::endl;
}

// Example Usage
int main() {
    /*
     * Original Tree:
     *      4
     *     / \
     *    2   7
     *   / \ / \
     *  1  3 6  9
     */
    TreeNode* root = new TreeNode(4);
    root->left = new TreeNode(2);
    root->right = new TreeNode(7);
    root->left->left = new TreeNode(1);
    root->left->right = new TreeNode(3);
    root->right->left = new TreeNode(6);
    root->right->right = new TreeNode(9);

    std::cout << "Original Tree (Level Order): ";
    printTree(root);

    Solution sol;
    sol.invertTree(root);

    std::cout << "Inverted Tree (Level Order): ";
    printTree(root);
    /*
     * Expected Inverted Tree:
     *      4
     *     / \
     *    7   2
     *   / \ / \
     *  9  6 3  1
     */

    // Clean up memory
    // (A real-world scenario would require a more robust cleanup function)
    return 0;
}
