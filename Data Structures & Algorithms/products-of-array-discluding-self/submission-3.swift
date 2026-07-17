class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var output: [Int] = Array(repeating: 1, count: nums.count)

        var left = 1
        for (index, value) in nums.enumerated() {
            output[index] *= left
            left *= value
        }
        
        var right = 1
        for (index, value) in nums.enumerated().reversed() {
            output[index] *= right
            right *= value
        }
        
        return output
    }
}