class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        for num in nums {
            dict[num, default: 0] += 1
        }
        let sortedByValueDictionary = dict.sorted { $0.1 > $1.1 }.map { Int($0.key) }
        return Array(sortedByValueDictionary.prefix(k))
    }
}