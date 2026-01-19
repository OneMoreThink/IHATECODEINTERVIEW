import Foundation

// Sorting-based solution (O(n log n))
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        if nums.isEmpty {
            return []
        }

        var counts: [Int: Int] = [:]
        for num in nums {
            counts[num, default: 0] += 1
        }

        let sortedCounts = counts.sorted { $0.value > $1.value }

        let topK = sortedCounts.prefix(k)

        return topK.map { $0.key }
    }
}

// Heap-based solution (O(n log k))
// First, we need a Min-Heap implementation
struct Heap<Element: Equatable> {
    var elements: [Element]
    let priorityFunction: (Element, Element) -> Bool

    init(elements: [Element] = [], priorityFunction: @escaping (Element, Element) -> Bool) {
        self.elements = elements
        self.priorityFunction = priorityFunction
        buildHeap()
    }

    mutating func buildHeap() {
        for index in (0..<count / 2).reversed() {
            siftDown(elementAtIndex: index)
        }
    }

    var isEmpty: Bool {
        return elements.isEmpty
    }

    var count: Int {
        return elements.count
    }

    func peek() -> Element? {
        return elements.first
    }

    mutating func enqueue(_ element: Element) {
        elements.append(element)
        siftUp(elementAtIndex: count - 1)
    }

    mutating func dequeue() -> Element? {
        guard !isEmpty else { return nil }
        swapElement(at: 0, with: count - 1)
        let element = elements.removeLast()
        if !isEmpty {
            siftDown(elementAtIndex: 0)
        }
        return element
    }

    mutating func siftUp(elementAtIndex index: Int) {
        let parent = parentIndex(of: index)
        guard !isRoot(index),
            isHigherPriority(at: index, than: parent) else { return }
        swapElement(at: index, with: parent)
        siftUp(elementAtIndex: parent)
    }

    mutating func siftDown(elementAtIndex index: Int) {
        let childIndices = childrenIndices(of: index)
        let highestPriorityIndex = childIndices.reduce(where: { isHigherPriority(at: $0, than: $1) }) ?? index
        if highestPriorityIndex == index { return }
        swapElement(at: index, with: highestPriorityIndex)
        siftDown(elementAtIndex: highestPriorityIndex)
    }

    // Helper functions
    func isRoot(_ index: Int) -> Bool {
        return index == 0
    }

    func leftChildIndex(of index: Int) -> Int {
        return (2 * index) + 1
    }

    func rightChildIndex(of index: Int) -> Int {
        return (2 * index) + 2
    }

    func parentIndex(of index: Int) -> Int {
        return (index - 1) / 2
    }

    func isHigherPriority(at firstIndex: Int, than secondIndex: Int) -> Bool {
        return priorityFunction(elements[firstIndex], elements[secondIndex])
    }

    func childrenIndices(of index: Int) -> [Int] {
        let left = leftChildIndex(of: index)
        let right = rightChildIndex(of: index)
        return [left, right].filter { $0 < count }
    }

    mutating func swapElement(at firstIndex: Int, with secondIndex: Int) {
        elements.swapAt(firstIndex, secondIndex)
    }
}

extension Array {
    func reduce(where isIncluded: (Element, Element) -> Bool) -> Element? {
        guard !isEmpty else { return nil }
        return reduce(self[0]) { isIncluded($0, $1) ? $0 : $1 }
    }
}


class SolutionHeap {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequencies: [Int: Int] = [:]
        for num in nums {
            frequencies[num, default: 0] += 1
        }

        var minHeap = Heap<(Int, Int)>(priorityFunction: { $0.1 < $1.1 })

        for (num, freq) in frequencies {
            minHeap.enqueue((num, freq))
            if minHeap.count > k {
                _ = minHeap.dequeue()
            }
        }

        var result: [Int] = []
        while let element = minHeap.dequeue() {
            result.append(element.0)
        }
        return result.reversed()
    }
}


// Example Usage
let sol = Solution()
let nums1 = [1, 1, 1, 2, 2, 3]
let k1 = 2
let result1 = sol.topKFrequent(nums1, k1)
print("Top \(k1) frequent elements (Sort solution): \(result1)")

let solHeap = SolutionHeap()
let result2 = solHeap.topKFrequent(nums1, k1)
print("Top \(k1) frequent elements (Heap solution): \(result2)")


let nums2 = [1]
let k2 = 1
let result3 = sol.topKFrequent(nums2, k2)
print("Top \(k2) frequent elements (Sort solution): \(result3)")

let result4 = solHeap.topKFrequent(nums2, k2)
print("Top \(k2) frequent elements (Heap solution): \(result4)")