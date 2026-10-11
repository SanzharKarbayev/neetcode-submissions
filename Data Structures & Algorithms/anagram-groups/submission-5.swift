class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var output: [String: [String]] = [:]
        for str in strs {
            let sortedStr = String(str.sorted())
            output[sortedStr, default: []] += [str]
        }
        return Array(output.values)
    }
}