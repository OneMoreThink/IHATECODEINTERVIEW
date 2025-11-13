# 📚 Data Structure & Algorithm Study

> C++로 구현하고 깊이 있게 이해하는 자료구조와 알고리즘

## 📖 소개

이 리포지토리는 자료구조와 알고리즘을 단순히 구현하는 것을 넘어서, 그 배경과 원리, 그리고 컴퓨터 시스템 전반에 걸친 연관성을 깊이 있게 탐구합니다.

### 학습 방향
- ✅ **도입 배경**: 왜 이 자료구조/알고리즘이 필요한가?
- ✅ **상세한 분석**: 시간/공간 복잡도의 수학적 증명
- ✅ **시스템 관점**: 메모리, 캐시, CPU, 파일시스템과의 관계
- ✅ **실전 활용**: 실제 산업계와 코딩 테스트에서의 응용
- ✅ **C++ 구현**: 생산성 코드 수준의 완성도

---

## 📂 목차

### 🗂️ Data Structures (자료구조)

#### Linear Data Structures (선형 자료구조)
- [ ] **[Array](./Data-Structures/Array/README.md)** - 배열
  - 메모리 연속성과 캐시 효율성
  - Dynamic Array 구현
  
- [ ] **[Linked List](./Data-Structures/LinkedList/README.md)** - 연결 리스트
  - Singly Linked List
  - Doubly Linked List
  - Circular Linked List
  - 포인터와 메모리 관리

- [ ] **[Stack](./Data-Structures/Stack/README.md)** - 스택
  - 함수 호출 스택과 콜 스택
  - 시스템 스택 프레임
  
- [ ] **[Queue](./Data-Structures/Queue/README.md)** - 큐
  - Circular Queue
  - Priority Queue
  - 운영체제 스케줄링과의 관계

#### Non-Linear Data Structures (비선형 자료구조)

##### Trees (트리)
- [ ] **[Binary Tree](./Data-Structures/Tree/BinaryTree/README.md)** - 이진 트리
- [ ] **[Binary Search Tree](./Data-Structures/Tree/BST/README.md)** - 이진 탐색 트리
- [ ] **[AVL Tree](./Data-Structures/Tree/AVL/README.md)** - AVL 트리
- [ ] **[Red-Black Tree](./Data-Structures/Tree/RedBlack/README.md)** - 레드-블랙 트리
- [ ] **[B-Tree](./Data-Structures/Tree/BTree/README.md)** - B-트리
  - 데이터베이스 인덱싱
  - 파일 시스템 구조
- [ ] **[B+ Tree](./Data-Structures/Tree/BPlusTree/README.md)** - B+ 트리
- [ ] **[Trie](./Data-Structures/Tree/Trie/README.md)** - 트라이
- [ ] **[Segment Tree](./Data-Structures/Tree/SegmentTree/README.md)** - 세그먼트 트리
- [ ] **[Fenwick Tree](./Data-Structures/Tree/FenwickTree/README.md)** - 펜윅 트리

##### Graphs (그래프)
- [ ] **[Graph Basics](./Data-Structures/Graph/Basics/README.md)** - 그래프 기초
  - 인접 행렬 vs 인접 리스트
  - 메모리 트레이드오프
- [ ] **[Directed Graph](./Data-Structures/Graph/Directed/README.md)** - 방향 그래프
- [ ] **[Weighted Graph](./Data-Structures/Graph/Weighted/README.md)** - 가중치 그래프

#### Hash-based Structures (해시 기반)
- [ ] **[Hash Table](./Data-Structures/Hash/HashTable/README.md)** - 해시 테이블
  - 해시 함수 설계
  - 충돌 해결 기법
  - 캐시와 메모리 지역성
- [ ] **[Bloom Filter](./Data-Structures/Hash/BloomFilter/README.md)** - 블룸 필터
  - 확률적 자료구조
  - 네트워크에서의 활용

#### Heap (힙)
- [ ] **[Binary Heap](./Data-Structures/Heap/BinaryHeap/README.md)** - 이진 힙
- [ ] **[Fibonacci Heap](./Data-Structures/Heap/FibonacciHeap/README.md)** - 피보나치 힙

#### Advanced Structures (고급 자료구조)
- [ ] **[Disjoint Set (Union-Find)](./Data-Structures/Advanced/DisjointSet/README.md)** - 분리 집합
- [ ] **[Skip List](./Data-Structures/Advanced/SkipList/README.md)** - 스킵 리스트
- [ ] **[Suffix Array](./Data-Structures/Advanced/SuffixArray/README.md)** - 접미사 배열
- [ ] **[LRU Cache](./Data-Structures/Advanced/LRUCache/README.md)** - LRU 캐시
  - 운영체제 페이지 교체

---

### 🔧 Algorithms (알고리즘)

#### Sorting (정렬)
- [ ] **[Bubble Sort](./Algorithms/Sorting/BubbleSort/README.md)** - 버블 정렬
- [ ] **[Selection Sort](./Algorithms/Sorting/SelectionSort/README.md)** - 선택 정렬
- [ ] **[Insertion Sort](./Algorithms/Sorting/InsertionSort/README.md)** - 삽입 정렬
- [ ] **[Merge Sort](./Algorithms/Sorting/MergeSort/README.md)** - 병합 정렬
  - 외부 정렬과의 관계
- [ ] **[Quick Sort](./Algorithms/Sorting/QuickSort/README.md)** - 퀵 정렬
  - 파티션 전략
  - 캐시 효율성
- [ ] **[Heap Sort](./Algorithms/Sorting/HeapSort/README.md)** - 힙 정렬
- [ ] **[Counting Sort](./Algorithms/Sorting/CountingSort/README.md)** - 계수 정렬
- [ ] **[Radix Sort](./Algorithms/Sorting/RadixSort/README.md)** - 기수 정렬
- [ ] **[Bucket Sort](./Algorithms/Sorting/BucketSort/README.md)** - 버킷 정렬

#### Searching (탐색)
- [ ] **[Linear Search](./Algorithms/Searching/LinearSearch/README.md)** - 선형 탐색
- [ ] **[Binary Search](./Algorithms/Searching/BinarySearch/README.md)** - 이진 탐색
- [ ] **[Ternary Search](./Algorithms/Searching/TernarySearch/README.md)** - 삼진 탐색
- [ ] **[Interpolation Search](./Algorithms/Searching/InterpolationSearch/README.md)** - 보간 탐색

#### Graph Algorithms (그래프 알고리즘)

##### Traversal (순회)
- [ ] **[BFS](./Algorithms/Graph/BFS/README.md)** - 너비 우선 탐색
- [ ] **[DFS](./Algorithms/Graph/DFS/README.md)** - 깊이 우선 탐색

##### Shortest Path (최단 경로)
- [ ] **[Dijkstra](./Algorithms/Graph/Dijkstra/README.md)** - 다익스트라
- [ ] **[Bellman-Ford](./Algorithms/Graph/BellmanFord/README.md)** - 벨만-포드
- [ ] **[Floyd-Warshall](./Algorithms/Graph/FloydWarshall/README.md)** - 플로이드-워셜
- [ ] **[A* Algorithm](./Algorithms/Graph/AStar/README.md)** - A* 알고리즘

##### Minimum Spanning Tree (최소 신장 트리)
- [ ] **[Kruskal](./Algorithms/Graph/Kruskal/README.md)** - 크루스칼
- [ ] **[Prim](./Algorithms/Graph/Prim/README.md)** - 프림

##### Network Flow (네트워크 플로우)
- [ ] **[Ford-Fulkerson](./Algorithms/Graph/FordFulkerson/README.md)** - 포드-풀커슨
- [ ] **[Edmonds-Karp](./Algorithms/Graph/EdmondsKarp/README.md)** - 에드몬드-카프

##### Other Graph Algorithms
- [ ] **[Topological Sort](./Algorithms/Graph/TopologicalSort/README.md)** - 위상 정렬
- [ ] **[Tarjan's SCC](./Algorithms/Graph/Tarjan/README.md)** - 타잔 알고리즘
- [ ] **[Cycle Detection](./Algorithms/Graph/CycleDetection/README.md)** - 사이클 탐지

#### Dynamic Programming (동적 계획법)
- [ ] **[Fibonacci](./Algorithms/DP/Fibonacci/README.md)** - 피보나치
- [ ] **[Knapsack](./Algorithms/DP/Knapsack/README.md)** - 배낭 문제
- [ ] **[LCS](./Algorithms/DP/LCS/README.md)** - 최장 공통 부분 수열
- [ ] **[LIS](./Algorithms/DP/LIS/README.md)** - 최장 증가 부분 수열
- [ ] **[Matrix Chain Multiplication](./Algorithms/DP/MatrixChain/README.md)** - 행렬 곱셈 순서

#### Greedy (탐욕 알고리즘)
- [ ] **[Activity Selection](./Algorithms/Greedy/ActivitySelection/README.md)** - 활동 선택
- [ ] **[Huffman Coding](./Algorithms/Greedy/Huffman/README.md)** - 허프만 코딩
  - 압축 알고리즘

#### String Algorithms (문자열 알고리즘)
- [ ] **[KMP](./Algorithms/String/KMP/README.md)** - KMP 알고리즘
- [ ] **[Rabin-Karp](./Algorithms/String/RabinKarp/README.md)** - 라빈-카프
- [ ] **[Boyer-Moore](./Algorithms/String/BoyerMoore/README.md)** - 보이어-무어
- [ ] **[Manacher](./Algorithms/String/Manacher/README.md)** - 마나커 알고리즘

#### Divide and Conquer (분할 정복)
- [ ] **[Merge Sort](./Algorithms/DivideConquer/MergeSort/README.md)** - 병합 정렬
- [ ] **[Quick Sort](./Algorithms/DivideConquer/QuickSort/README.md)** - 퀵 정렬
- [ ] **[Binary Search](./Algorithms/DivideConquer/BinarySearch/README.md)** - 이진 탐색
- [ ] **[Closest Pair](./Algorithms/DivideConquer/ClosestPair/README.md)** - 최근접 점의 쌍

#### Backtracking (백트래킹)
- [ ] **[N-Queens](./Algorithms/Backtracking/NQueens/README.md)** - N-퀸 문제
- [ ] **[Sudoku Solver](./Algorithms/Backtracking/Sudoku/README.md)** - 스도쿠 풀이

---

### 💻 Computer Science Fundamentals

#### Computer Architecture (컴퓨터 구조)
- [ ] **[Cache Memory](./CS-Fundamentals/Architecture/Cache/README.md)**
  - 캐시 지역성 (Locality)
  - 캐시 일관성 (Cache Coherence)
  - 캐시 친화적 프로그래밍
  
- [ ] **[Memory Hierarchy](./CS-Fundamentals/Architecture/Memory/README.md)**
  - 레지스터, L1/L2/L3 캐시, RAM, 디스크
  - 메모리 접근 비용
  
- [ ] **[CPU Pipeline](./CS-Fundamentals/Architecture/Pipeline/README.md)**
  - 분기 예측 (Branch Prediction)
  - 파이프라인 해저드
  
- [ ] **[Virtual Memory](./CS-Fundamentals/Architecture/VirtualMemory/README.md)**
  - 페이징과 세그먼테이션
  - TLB (Translation Lookaside Buffer)

#### Operating Systems (운영체제)
- [ ] **[Process & Thread](./CS-Fundamentals/OS/ProcessThread/README.md)**
  - 프로세스 스케줄링 알고리즘
  - 컨텍스트 스위칭
  
- [ ] **[Memory Management](./CS-Fundamentals/OS/Memory/README.md)**
  - 메모리 할당 전략
  - 페이지 교체 알고리즘
  - Garbage Collection
  
- [ ] **[Synchronization](./CS-Fundamentals/OS/Sync/README.md)**
  - Mutex, Semaphore
  - Deadlock
  
- [ ] **[File Systems](./CS-Fundamentals/OS/FileSystem/README.md)**
  - inode 구조
  - 파일 할당 방법
  - 저널링

#### File System (파일 시스템)
- [ ] **[File System Basics](./CS-Fundamentals/FileSystem/Basics/README.md)**
  - FAT, NTFS, ext4
  - 파일 시스템 구조
  
- [ ] **[Indexing Structures](./CS-Fundamentals/FileSystem/Indexing/README.md)**
  - B-Tree 인덱싱
  - 데이터베이스 인덱스
  
- [ ] **[Storage Devices](./CS-Fundamentals/FileSystem/Storage/README.md)**
  - HDD vs SSD
  - Sequential vs Random I/O

#### Networking (네트워킹)
- [ ] **[TCP/IP Stack](./CS-Fundamentals/Networking/TCPIP/README.md)**
  - 계층별 자료구조
  - 프로토콜 구현
  
- [ ] **[Routing Algorithms](./CS-Fundamentals/Networking/Routing/README.md)**
  - 라우팅 테이블
  - 최단 경로 알고리즘 활용
  
- [ ] **[Load Balancing](./CS-Fundamentals/Networking/LoadBalancing/README.md)**
  - Round Robin
  - Consistent Hashing
  
- [ ] **[Packet Processing](./CS-Fundamentals/Networking/Packets/README.md)**
  - Queue 구조
  - 버퍼 관리

---

## 🛠️ 개발 환경

### Requirements
- **C++ Compiler**: C++17 이상 (GCC 7+, Clang 5+, MSVC 2017+)
- **Build System**: CMake 3.15+
- **Testing**: Google Test
- **Documentation**: Doxygen (optional)

### 프로젝트 구조
```
.
├── Data-Structures/
│   └── [DataStructure]/
│       ├── README.md          # 상세 설명
│       ├── [name].h           # 헤더 파일
│       ├── [name].cpp         # 구현 파일
│       ├── [name]_test.cpp    # 테스트 코드
│       └── examples/          # 예제
│           └── example.cpp
├── Algorithms/
│   └── [Category]/
│       └── [Algorithm]/
│           ├── README.md
│           ├── [name].h
│           ├── [name].cpp
│           └── examples/
├── CS-Fundamentals/
│   └── [Category]/
│       └── [Topic]/
│           └── README.md
└── CMakeLists.txt
```

### 빌드 및 실행
```bash
# 클론
git clone https://github.com/[username]/DS-Algorithm-Study.git
cd DS-Algorithm-Study

# 빌드
mkdir build && cd build
cmake ..
make

# 테스트 실행
./tests/[test_name]
```

---

## 📝 학습 방법

### 1단계: 개념 이해
- README 문서를 통해 배경과 원리 파악
- 시각적 자료로 동작 과정 이해

### 2단계: 코드 분석
- 구현 코드를 한 줄씩 읽으며 이해
- 시간/공간 복잡도 분석

### 3단계: 직접 구현
- 코드를 보지 않고 처음부터 구현
- 테스트 케이스로 검증

### 4단계: 최적화
- 성능 프로파일링
- 다양한 최적화 기법 적용

### 5단계: 문제 풀이
- 관련 알고리즘 문제 해결
- 실전 활용 경험 쌓기

---

## 📚 참고 자료

### 책
- **Introduction to Algorithms** - Thomas H. Cormen et al.
- **The Art of Computer Programming** - Donald Knuth
- **Algorithm Design Manual** - Steven S. Skiena
- **Computer Systems: A Programmer's Perspective** - Randal E. Bryant

### 시각화 도구
- [VisuAlgo](https://visualgo.net/)
- [Algorithm Visualizer](https://algorithm-visualizer.org/)

