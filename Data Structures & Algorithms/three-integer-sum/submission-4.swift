class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted() // O(nlogn)
        var i = 0
        var k = sortedNums.count - 1
        var output: Set<[Int]> = Set()
        while i < k - 1 {
            var j = i + 1
            k = sortedNums.count - 1
            while j < k {
                let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]
                if sum == 0 {
                    output.insert([sortedNums[i], sortedNums[j], sortedNums[k]])
                    k -= 1 
                    j += 1
                } else if sum > 0 {
                    k -= 1
                } else {
                    j += 1
                }
            }
            i += 1
        }
        return Array(output)
    }
}