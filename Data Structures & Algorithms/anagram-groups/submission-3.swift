class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var output: [[Character: Int]: [String]] = [:]

        for str in strs {
            var characters: [Character: Int] = [:]
            for char in str {
                characters[char, default: 0] += 1
            }
            output[characters, default: []].append(str)
        }

        return Array(output.values)
    }
}
