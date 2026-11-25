class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var low = 1
        var high = piles.max()!

        while low < high {
            let mid = low + (high - low) / 2

            if canFinish(piles, k: mid, h: h) {
                high = mid
            } else {
                low = mid + 1
            }
        }

        return low
    }

    private func canFinish(_ piles: [Int], k: Int, h: Int) -> Bool {
        var hours = 0
        for pile in piles {
            hours += pile / k + (pile % k == 0 ? 0 : 1)
        }
        return hours <= h
    }
}
