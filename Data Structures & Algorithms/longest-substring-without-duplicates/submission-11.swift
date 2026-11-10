class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let charArray = Array(s)
        var outputSet = Set<Character>()
        var left = 0
        var outputLenght = 0
        for right in 0..<charArray.count {
            let char = charArray[right]
            while outputSet.contains(char) {
                outputSet.remove(charArray[left])
                left += 1
            }
            outputSet.insert(char)
            outputLenght = max(outputLenght, right - left + 1)
        }
        return outputLenght
    }
}
