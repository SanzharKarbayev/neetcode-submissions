class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq: [Int: Int] = [:]
        for num in nums {
            freq[num, default: 0] += 1
        }

        var buckets: [[Int]] = Array(repeating: [], count: nums.count + 1)
        for (key, value) in freq {
            buckets[value].append(key)
        }


        var output: [Int] = []
        for bucket in buckets.reversed() {
            output.append(contentsOf: bucket)
            if output.count >= k {
                return Array(output.prefix(k))
            }
        }

        return output
    }
}
