class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var output = 0
        var left = 0
        for right in 0..<prices.count {
            let profit = prices[right] - prices[left]
            output = max(output, profit)

            if prices[left] >= prices[right] {
                left = right
            }
        }

        return output
    }
}
