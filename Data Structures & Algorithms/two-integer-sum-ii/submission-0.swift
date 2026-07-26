class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var index1 = 0
        var index2 = 1
        while index1 < numbers.count {
            while index2 < numbers.count {
                if numbers[index1] + numbers[index2] == target {
                    return [index1 + 1, index2 + 1]
                }
                index2 += 1
            }
            index1 += 1
            index2 = index1 + 1
        }

        return [1, 2]
    }
}
