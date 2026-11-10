class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let charArray = Array(s)
        var count: [Character: Int] = [:]
        var maxFrequency = 0
        var result = 0

        var left = 0
        for right in 0..<charArray.count {
            count[charArray[right], default: 0] += 1
            maxFrequency = max(maxFrequency, count[charArray[right]]!)

            while (right - left + 1) - maxFrequency > k {
                count[charArray[left], default: 0] -= 1
                left += 1
            }

            result = max(result, right - left + 1)
        }

        return result
    }
}
