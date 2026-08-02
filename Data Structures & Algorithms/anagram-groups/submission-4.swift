class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var output: [String: [String]] = [:]
        for str in strs {
            output[String(str.sorted()), default: []].append(str)
        }
        return Array(output.values)
    }
}
