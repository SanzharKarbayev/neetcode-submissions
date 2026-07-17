class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var output = 0

        var set = Set(nums)
        for num in nums {
            guard !set.contains(num - 1) else { continue }

            set.insert(num)

            var sequence = 1
            while set.contains(num + sequence) {
                sequence += 1
            }
            output = max(output, sequence)
        }

        return output
    }
}
