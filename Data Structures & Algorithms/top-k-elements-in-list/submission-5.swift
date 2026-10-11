class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count: [Int: Int] = [:]
        var freq = [[Int]](repeating: [], count: nums.count + 1)

        for num in nums {
            count[num, default: 0] += 1
        }

        for (key, value) in count {
            freq[value].append(key)
        }

        var output: [Int] = []
        for (index, value) in freq.reversed().enumerated() {
            for num in value {
                output.append(num)
                if output.count == k {
                    return output.suffix(k)
                }
            }
        }

        return output.suffix(k)
    }
}
