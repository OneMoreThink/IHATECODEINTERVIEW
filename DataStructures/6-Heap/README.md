# Data Structure: Heap / Priority Queue

## What is a Heap?

A Heap is a special tree-based data structure that satisfies the "heap property". It's typically used to implement Priority Queues.

- **Min-Heap**: The value of each parent node is less than or equal to the value of its children. This means the root node is always the minimum element in the heap.
- **Max-Heap**: The value of each parent node is greater than or equal to the value of its children. The root node is always the maximum element.

Heaps are "partially ordered", not fully sorted. They are usually implemented as arrays for efficiency, using mathematical formulas to find parent and child indices.

## What is a Priority Queue?

A Priority Queue (PQ) is an abstract data type similar to a regular queue, but where each element has a "priority". Elements with higher priority are served before elements with lower priority. Heaps are the most common and efficient way to implement PQs.

### Key Operations

- **Insert / Push**: Adds an element to the queue and sorts it accordingly. (Time: O(log n))
- **Extract Min/Max / Pop**: Removes the highest-priority element (the root) from the queue. (Time: O(log n))
- **Peek / Top**: Returns the highest-priority element without removing it. (Time: O(1))

## When to Use a Heap / Priority Queue?

Heaps and PQs are extremely useful for problems involving finding the "best" or "top" elements in a collection. Look for these keywords:

- **"Top K elements"** (e.g., "find the top 5 largest numbers")
- **"Smallest/Largest K elements"**
- **"Median"** (e.g., finding the median in a stream of numbers, often using two heaps)
- Problems that require repeatedly finding and removing the min or max element from a dynamic collection.
- Efficiently merging sorted lists.
