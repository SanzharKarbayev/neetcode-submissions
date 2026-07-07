class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let hashset = Set(nums.map { $0 })
        return nums.count != hashset.count
    }
}
