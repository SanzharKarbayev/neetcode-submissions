class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, value) in nums.enumerated() {
            if let targetIndex = dict[target - value] {
                return [targetIndex, index]
            }
            dict[value] = index
        }
        return []
    }
}
