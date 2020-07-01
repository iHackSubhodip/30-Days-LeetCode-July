/*
 Question - Arranging Coins
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3377/
 */

class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        return Int((2 * Double(n) + 0.25).squareRoot() - 0.5)
    }
}
