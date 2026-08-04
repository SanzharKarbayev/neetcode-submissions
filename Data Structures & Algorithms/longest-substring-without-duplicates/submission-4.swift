class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 1 else { return s.count } // early exit if s.count <= 1
        
        var characters: [Character] = Array(s)
        var left = 0
        var substring: [Character: Int] = [:]
        var output = 0
        
        for right in 0..<characters.count {
            if let duplicateIndex = substring[characters[right]] {
                left = max(left, duplicateIndex + 1)
            }
            substring[characters[right]] = right
            
            output = max(output, right - left + 1)
        }

        return output
    }
}