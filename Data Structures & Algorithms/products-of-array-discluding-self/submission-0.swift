class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var output: [Int] = []
        for (index, _) in nums.enumerated() {
            var product = 0
            product += nums[0..<index].reduce(1, *) * nums[index + 1..<nums.count].reduce(1, *)
            output.append(product)
        }
        return output
    }
}
