/*
 Question - Hamming Distance
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3381/
 */

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var count = 0, n = x ^ y
        while n > 0{
            n &= n-1
            count += 1
        }
        return count
    }
}
