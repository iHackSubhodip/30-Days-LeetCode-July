/*
 Question - Reverse Bits
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3388/
 */

class Solution {
    func reverseBits(_ n: Int) -> Int {
        var n = n
        var result = 0
        
        for i in 0..<32 {
            result += (n & 1)
            n >>= 1
            if i < 31 {
                result <<= 1
            }
        }
        
        return result
    }
}
