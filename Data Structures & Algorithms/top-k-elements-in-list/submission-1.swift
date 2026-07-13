class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var buckets: [[Int]] = []
        for num in nums {
            dict[num, default: 0] += 1
            buckets.append([])
        }
        buckets.append([])

        for (num, freq) in dict {
            buckets[freq].append(num)
        }

        var output: [Int] = []

        for freq in stride(from: buckets.count - 1, through: 1, by: -1) {
            for num in buckets[freq] {
                output.append(num)
                if output.count == k {
                    return output
                }
            }
        }

        return output
    }
}
