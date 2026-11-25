class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var lowIndex = 0
        var highIndex = nums.count - 1
        while lowIndex < highIndex {
            let midIndex = lowIndex + (highIndex - lowIndex) / 2

            if nums[midIndex] <= nums[highIndex] {
                highIndex = midIndex
            } else {
                lowIndex = midIndex + 1
            }
        }

        return nums[lowIndex]
    }
}
