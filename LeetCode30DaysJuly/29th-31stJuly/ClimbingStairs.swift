/*
 Question - Climbing Stairs
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/548/week-5-july-29th-july-31st/3407/
 */

class Solution {
  func climbStairs(_ n: Int) -> Int {
    
    if n == 0{
      return 0
    }
    
    if n == 1{
      return 1
    }
    
    if n == 2{
      return 2
    }
    
    var climbTable = Array(repeating: 0, count: n+1)
    climbTable[0] = 0
    climbTable[1] = 1
    climbTable[2] = 2
    
    for i in 3...n{
      climbTable[i] = climbTable[i-1] + climbTable[i-2]
    }
    return climbTable[n]
  }
}
