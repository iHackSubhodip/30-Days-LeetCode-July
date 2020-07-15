/*
 Question - Reverse Words in a String
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3391/
 */

class Solution {
  func reverseWords(_ s: String) -> String {
    return s.split(separator: " ").reversed().joined(separator: " ")
  }
}
