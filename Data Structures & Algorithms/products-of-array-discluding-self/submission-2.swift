class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard nums.count >= 2 else { return nums }

        var left = Array(repeating: 1, count: nums.count)
        var i = 1
        while i < nums.count {
            left[i] = nums[i - 1] * left[i - 1]
            i += 1
        }

        var right = Array(repeating: 1, count: nums.count)
        var j = nums.count - 2
        while j >= 0 {
            right[j] = nums[j + 1] * right[j + 1]
            j -= 1
        }

        var output: [Int] = []
        for (l, r) in zip(left, right) {
            output.append(l * r)
        }
        return output
    }
}