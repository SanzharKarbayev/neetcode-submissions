class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = 0
        var best = 0
        for sell in 1..<prices.count {
            let profit = prices[sell] - prices[buy]
            if prices[sell] > prices[buy] {
                best = max(best, profit)
            } else {
                buy = sell
            }
        }
        return best
    }
}
