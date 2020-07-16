/*
 Question - Pow(x, n)
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3392/
 */

class Solution {
  func myPow(_ x: Double, _ n: Int) -> Double {
    if n == 0 { return 1 }
    var temp = myPow(x, n/2)
    if n%2 == 0{
      return temp * temp
    }else{
      if n > 0{
        return x * temp * temp
      }else{
        return (temp * temp)/x
      }
    }
  }
}
