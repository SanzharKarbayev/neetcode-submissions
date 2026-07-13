class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res: [[Character: Int]: [String]] = [:]

        for s in strs {
            var count: [Character: Int] = [:]
            for c in s {
                count[c, default: 0] += 1
            }

            res[count, default: []].append(s)
        }

        return Array(res.values)
    }
}