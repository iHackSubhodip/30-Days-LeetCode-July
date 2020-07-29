/*
 Question - Best Time to Buy and Sell Stock with Cooldown
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/548/week-5-july-29th-july-31st/3405/
 */

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else { return 0 }
        var result = 0, dp = Array(repeating: 0, count: prices.count)
        for i in 1..<prices.count{
            for j in (0..<i).reversed(){
               if j >= 2{
                  dp[i] = max(dp[i], prices[i] - prices[j] + dp[j-2])
               } else{
                  dp[i] = max(dp[i], prices[i] - prices[j])
               }
            }
            dp[i] = max(dp[i], dp[i-1])
            result = max(result, dp[i])
        }
        return result
    }
}
