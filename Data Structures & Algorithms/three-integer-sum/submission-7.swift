class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else { return [] }

        var output: Set<[Int]> = Set()
        let sortedNums = nums.sorted()
        let count = sortedNums.count
        var i = 0
        var j = 1
        var k = count - 1

        while i < j {
            j = i + 1
            k = count - 1
            while j < k {
                let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]
                if sum == 0 {
                    output.insert([sortedNums[i], sortedNums[j], sortedNums[k]].sorted())
                    j += 1
                    k -= 1
                } else if sum < 0 {
                    j += 1
                } else {
                    k -= 1
                }
            }

            i += 1
        }

        return Array(output)
    }
}
