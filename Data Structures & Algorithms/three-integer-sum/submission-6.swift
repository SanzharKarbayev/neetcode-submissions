class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted() // O(nlogn)
        var output: [[Int]] = []
        for i in 0..<(sortedNums.count - 2) {
            guard sortedNums[i] <= 0 else { break } // if sortedNums[i] > 0, then the sum of sortedNums[i] + sortedNums[j] + sortedNums[k] will always be > 0
            if i > 0 && sortedNums[i] == sortedNums[i - 1] { continue } // skip duplicates

            var j = i + 1
            var k = sortedNums.count - 1
            while j < k {
                let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]
                if sum == 0 {
                    output.append([sortedNums[i], sortedNums[j], sortedNums[k]])
                    j += 1
                    k -= 1
                    while j < k && sortedNums[j] == sortedNums[j - 1] {
                        j += 1 // skip duplicates
                    }
                } else if sum > 0 {
                    k -= 1
                } else { // sum < 0
                    j += 1
                }
            }
        }
        return output
    }
}