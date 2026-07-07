class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let sortedNums = nums.sorted()
        var counter = 0
        while counter < sortedNums.count - 1 {
            if sortedNums[counter] == sortedNums[counter + 1] {
                return true
            }
            counter += 1
        }
        return false
    }
}
