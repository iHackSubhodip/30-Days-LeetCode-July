/*
 Question - Add Digits
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/547/week-4-july-22nd-july-28th/3402/
 */

class Solution {
  func addDigits(_ num: Int) -> Int {
    return num < 10 ? num : (num % 9 == 0 ? 9 : num % 9)
  }
}
