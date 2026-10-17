class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let count = nums.count
        var output: [Int] = Array(repeating: 1, count: count)

        var left = 1
        for i in 0..<count {
            output[i] = left
            left *= nums[i]
        }

        var right = 1
        for i in (0..<count).reversed(){
            output[i] *= right
            right *= nums[i]
        }

        return output
    }
}
