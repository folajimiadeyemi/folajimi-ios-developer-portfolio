// Algorithms Playground
// This playground contains implementations of common algorithms in Swift.

import Foundation

// Bubble Sort Algorithm
func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    for i in 0..<n {
        for j in 0..<(n-i-1) {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
            }
        }
    }
}

// Example usage
var numbers = [5, 2, 9, 1, 5, 6]
bubbleSort(&numbers)
print("Sorted array:", numbers)
