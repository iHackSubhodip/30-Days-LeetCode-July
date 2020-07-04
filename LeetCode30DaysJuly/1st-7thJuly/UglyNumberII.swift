/*
 Question - Ugly Number II
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3380/
 */

class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        guard n > 1 else { return 1 }
        var dp = Array(repeating: 1, count: n)
        var index2 = 0, index3 = 0, index5 = 0
        for i in 1..<n{
            var minVal = min(dp[index2]*2, dp[index3]*3, dp[index5]*5)
            if minVal == dp[index2] * 2{
                index2 += 1
            }
            
            if minVal == dp[index3] * 3{
                index3 += 1
            }
            
            if minVal == dp[index5] * 5{
                index5 += 1
            }
            
            dp[i] = minVal
        }
        return dp[n-1]
    }
}
