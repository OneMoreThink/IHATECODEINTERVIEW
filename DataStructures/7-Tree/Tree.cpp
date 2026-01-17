#include <iostream>
#include <vector>
#include <queue>

// Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
};

class TreeAlgorithms {
public:
    // DFS: In-order Traversal (Left, Root, Right)
    void inorderTraversal(TreeNode* root) {
        if (root == nullptr) return;
        inorderTraversal(root->left);
        std::cout << root->val << " ";
        inorderTraversal(root->right);
    }

    // DFS: Pre-order Traversal (Root, Left, Right)
    void preorderTraversal(TreeNode* root) {
        if (root == nullptr) return;
        std::cout << root->val << " ";
        preorderTraversal(root->left);
        preorderTraversal(root->right);
    }

    // DFS: Post-order Traversal (Left, Right, Root)
    void postorderTraversal(TreeNode* root) {
        if (root == nullptr) return;
        postorderTraversal(root->left);
        postorderTraversal(root->right);
        std::cout << root->val << " ";
    }

    // BFS: Level-order Traversal
    void levelorderTraversal(TreeNode* root) {
        if (root == nullptr) return;
        std::queue<TreeNode*> q;
        q.push(root);
        while (!q.empty()) {
            TreeNode* current = q.front();
            q.pop();
            std::cout << current->val << " ";
            if (current->left != nullptr) {
                q.push(current->left);
            }
            if (current->right != nullptr) {
                q.push(current->right);
            }
        }
    }
};

// Example Usage
int main() {
    /*
     * Example Tree:
     *      4
     *     / \
     *    2   7
     *   / \
     *  1   3
     */
    TreeNode* root = new TreeNode(4);
    root->left = new TreeNode(2);
    root->right = new TreeNode(7);
    root->left->left = new TreeNode(1);
    root->left->right = new TreeNode(3);

    TreeAlgorithms ta;

    std::cout << "In-order Traversal (DFS): ";
    ta.inorderTraversal(root);
    std::cout << std::endl; // Expected: 1 2 3 4 7

    std::cout << "Pre-order Traversal (DFS): ";
    ta.preorderTraversal(root);
    std::cout << std::endl; // Expected: 4 2 1 3 7

    std::cout << "Post-order Traversal (DFS): ";
    ta.postorderTraversal(root);
    std::cout << std::endl; // Expected: 1 3 2 7 4

    std::cout << "Level-order Traversal (BFS): ";
    ta.levelorderTraversal(root);
    std::cout << std::endl; // Expected: 4 2 7 1 3

    // Clean up memory (important in C++)
    delete root->left->left;
    delete root->left->right;
    delete root->left;
    delete root->right;
    delete root;

    return 0;
}
