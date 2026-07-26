class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var output: [[Int]] = []
        let sortedArray = nums.sorted()

        for i in 0..<(sortedArray.count - 2) {
            if sortedArray[i] > 0 {
                break
            }

            if i > 0 && sortedArray[i] == sortedArray[i - 1] {
                continue
            }

            var left = i + 1
            var right = sortedArray.count - 1
            while left < right {
                let sum = sortedArray[i] + sortedArray[left] + sortedArray[right]

                if sum > 0 {
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    output.append([sortedArray[i], sortedArray[left], sortedArray[right]])

                    while left < right && sortedArray[right] == sortedArray[right - 1] {
                        right -= 1
                    }

                    while left < right && sortedArray[left] == sortedArray[left + 1] {
                        left += 1
                    }

                    left += 1
                    right -= 1
                }
            }
        }

        return output
    }
}
