#include <iostream>
#include <vector>
#include <queue>
#include <functional>

// C++ provides std::priority_queue, which is a container adaptor that provides constant time
// lookup of the largest (by default) or smallest element, at the cost of logarithmic
// insertion and extraction.

void demonstrateMaxHeap() {
    // By default, std::priority_queue is a Max-Heap.
    std::priority_queue<int> maxHeap;

    std::cout << "--- Max-Heap (Default Priority Queue) ---" << std::endl;
    maxHeap.push(10);
    maxHeap.push(30);
    maxHeap.push(20);
    maxHeap.push(5);

    std::cout << "Top element (max): " << maxHeap.top() << std::endl; // Expected: 30

    std::cout << "Popping elements: ";
    while (!maxHeap.empty()) {
        std::cout << maxHeap.top() << " "; // Prints the current max
        maxHeap.pop();                     // Removes the max
    }
    std::cout << std::endl; // Expected: 30 20 10 5
}

void demonstrateMinHeap() {
    // To create a Min-Heap, you need to provide a custom comparator.
    std::priority_queue<int, std::vector<int>, std::greater<int>> minHeap;

    std::cout << "\n--- Min-Heap (Customized Priority Queue) ---" << std::endl;
    minHeap.push(10);
    minHeap.push(30);
    minHeap.push(20);
    minHeap.push(5);

    std::cout << "Top element (min): " << minHeap.top() << std::endl; // Expected: 5

    std::cout << "Popping elements: ";
    while (!minHeap.empty()) {
        std::cout << minHeap.top() << " "; // Prints the current min
        minHeap.pop();                     // Removes the min
    }
    std::cout << std::endl; // Expected: 5 10 20 30
}

int main() {
    demonstrateMaxHeap();
    demonstrateMinHeap();
    return 0;
}
