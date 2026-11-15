class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count: [Int: Int] = [:]
        var freq: [[Int]] = Array(repeating: [], count: nums.count + 1)

        for num in nums {
            count[num, default: 0] += 1
        }

        for (num, cnt) in count {
            freq[cnt].append(num)
        }

        var result: [Int] = []
        for arr in freq.reversed() {
            for num in arr {
                result.append(num)
                if result.count == k { 
                    return result
                }
            }
        }

        return result
    }
}
