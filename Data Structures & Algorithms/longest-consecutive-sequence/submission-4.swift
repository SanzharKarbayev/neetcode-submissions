class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }

        let set = Set(nums)
        var output = 1
        for element in set {
            guard !set.contains(element - 1) else { continue }
            var currentSequence = 1
            var tmpElement = element
            while set.contains(tmpElement + 1) {
                currentSequence += 1
                tmpElement += 1
            }
            output = max(output, currentSequence)
        }
        return output
    }
}
