class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var output: [[Int]: [String]] = [:]
        for str in strs {
            var freq = Array(repeating: 0, count: 26)
            for char in str {
                let aAscii = Character("a").asciiValue!
                let charAscii = char.asciiValue!
                freq[Int(charAscii - aAscii)] += 1
            }
            output[freq, default: []].append(str)
        }

        return Array(output.values)
    }
}
