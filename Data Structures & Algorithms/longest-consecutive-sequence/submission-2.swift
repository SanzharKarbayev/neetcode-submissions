class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var output = 0

        var set = Set(nums)
        for num in set {
            guard !set.contains(num - 1) else { continue }

            var sequence = 1
            while set.contains(num + sequence) {
                sequence += 1
            }
            output = max(output, sequence)
        }

        return output
    }
}
