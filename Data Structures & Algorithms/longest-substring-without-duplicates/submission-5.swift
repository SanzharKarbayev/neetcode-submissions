class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 1 else { return s.count } // early exit if s.count <= 1

        var left = 0, output = 0
        var charDict: [Character: Int] = [:]

        for (right, char) in s.enumerated() {
            if let foundIndex = charDict[char],
               foundIndex >= left {
                left = foundIndex + 1
            }

            charDict[char] = right
            output = max(output, right - left + 1)
        }

        return output
    }
}