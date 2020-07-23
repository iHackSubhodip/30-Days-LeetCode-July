/*
 Question - Single Number III
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/547/week-4-july-22nd-july-28th/3399/
 */

class Solution {
  func singleNumber(_ nums: [Int]) -> [Int] {
    guard nums.count > 2 else { return nums }
    var result: Set<Int> = []
    for i in 0..<nums.count{
      if let index = result.index(of: nums[i]){
        result.remove(at: index)
      }else{
        result.insert(nums[i])
      }
    }
    return Array(result)
  }
}
