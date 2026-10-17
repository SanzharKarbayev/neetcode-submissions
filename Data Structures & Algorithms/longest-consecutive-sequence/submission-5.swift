class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }

        let set = Set(nums)
        var output = 1
        for num in set {
            guard !set.contains(num - 1) else { continue }

            var currentSequence = 1
            while set.contains(num + currentSequence) {
                currentSequence += 1
            }
            output = max(output, currentSequence)
        }
        return output
    }
}
