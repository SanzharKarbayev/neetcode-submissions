class Solution {
    /// One-pass hash map approach
    /// Time: O(n)
    /// Space: O(n)
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexByValue: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            if let matchIndex = indexByValue[target - value] {
                return [matchIndex, index]
            }
            indexByValue[value] = index
        }
        return []
    }
}
