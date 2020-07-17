/*
 Question - Top K Frequent Elements
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3393/
 */

class Solution {
  func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dictionary = [Int: Int]()
    for num in nums{
      dictionary[num, default: 0] += 1
    }
    return Array(dictionary.sorted(by: {$0.1 > $1.1}).map{$0.0}[0..<k])
  }
}
