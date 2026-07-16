class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var output = 0
        let set = Set(nums)
        for item in set {
            guard !set.contains(item - 1) else { continue }
            
            var length =  1
            while set.contains(item + length) {
                length += 1
            }
            output = max(length, output)
        }
        return output
    }
}