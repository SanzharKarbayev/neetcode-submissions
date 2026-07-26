class Solution {
    func trap(_ height: [Int]) -> Int {
        var output = 0
        var left = 0
        var right = height.count - 1
        var maxLeft = height[left]
        var maxRight = height[right]

        while left < right {
            if height[left] <= height[right] {
                if height[left] < maxLeft {
                    output += maxLeft - height[left]
                } else {
                    maxLeft = height[left]
                }

                left += 1
            } else {
                if height[right] < maxRight {
                    output += maxRight - height[right]
                } else {
                    maxRight = height[right]
                }

                right -= 1
            }
        }

        return output
    }
}
