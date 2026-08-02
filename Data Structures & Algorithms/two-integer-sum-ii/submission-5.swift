class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum < target {
                while left + 1 < right && numbers[left] == numbers[left + 1] {
                    left += 1
                }
                left += 1
            } else if sum > target {
                while left < right - 1 && numbers[right] == numbers[right - 1] {
                    right -= 1
                }
                right -= 1
            } else {
                return [left + 1, right + 1]
            }
        }
        return []
    }
}