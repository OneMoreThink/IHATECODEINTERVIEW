import Foundation

// Swift's standard library does not include a built-in Heap or Priority Queue.
// For interviews, you might be asked to implement a basic one or use a pre-existing
// implementation. Here is a basic implementation of a Min-Heap.

public struct MinHeap<T: Comparable> {
    private var items: [T] = []

    public var isEmpty: Bool {
        return items.isEmpty
    }

    public var count: Int {
        return items.count
    }

    public func peek() -> T? {
        return items.first
    }

    // Helper functions to get parent/child indices
    private func getLeftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    private func getRightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
    private func getParentIndex(_ childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }

    // Heapify up/down
    private mutating func heapifyUp() {
        var index = items.count - 1
        while index > 0 && items[index] < items[getParentIndex(index)] {
            let parentIndex = getParentIndex(index)
            items.swapAt(index, parentIndex)
            index = parentIndex
        }
    }

    private mutating func heapifyDown() {
        var index = 0
        while getLeftChildIndex(index) < items.count {
            var smallerChildIndex = getLeftChildIndex(index)
            let rightChildIndex = getRightChildIndex(index)

            if rightChildIndex < items.count && items[rightChildIndex] < items[smallerChildIndex] {
                smallerChildIndex = rightChildIndex
            }

            if items[index] < items[smallerChildIndex] {
                break // Heap property is satisfied
            } else {
                items.swapAt(index, smallerChildIndex)
            }
            index = smallerChildIndex
        }
    }

    // Public methods
    public mutating func push(_ item: T) {
        items.append(item)
        heapifyUp()
    }

    public mutating func pop() -> T? {
        if items.isEmpty {
            return nil
        } else if items.count == 1 {
            return items.removeLast()
        } else {
            let value = items[0]
            items[0] = items.removeLast()
            heapifyDown()
            return value
        }
    }
}

// Example Usage
print("--- Min-Heap (Custom Swift Implementation) ---")
var minHeap = MinHeap<Int>()
minHeap.push(10)
minHeap.push(30)
minHeap.push(20)
minHeap.push(5)

print("Top element (min): \(minHeap.peek() ?? -1)") // Expected: 5

print("Popping elements: ", terminator: "")
while !minHeap.isEmpty {
    if let val = minHeap.pop() {
        print(val, terminator: " ") // Expected: 5 10 20 30
    }
}
print()
