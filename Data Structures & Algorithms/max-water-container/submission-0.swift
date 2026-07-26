class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var output = 0

        var left = 0
        var right = heights.count - 1
        while left < right {
            let height = min(heights[left], heights[right])
            let width = right - left
            let waterAmount = height * width

            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }

            output = max(output, waterAmount)
        }

        return output
    }
}
