class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        guard heights.count > 1 else { return 0 }

        var left = 0
        var right = heights.count - 1
        var output = 0
        while left < right {
            var current = min(heights[left], heights[right]) * (right - left)
            output = max(output, current)

            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return output
    }
}
