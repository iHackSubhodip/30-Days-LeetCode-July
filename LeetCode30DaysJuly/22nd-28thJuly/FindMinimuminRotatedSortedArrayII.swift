/*
 Question - Find Minimum in Rotated Sorted Array II
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/547/week-4-july-22nd-july-28th/3401/
 */

class Solution {
  func findMin(_ nums: [Int]) -> Int {
    var left = 0, right = nums.count - 1, mid = 0, minVal = Int.max
    while 1 + left < right{
      mid = (right - left) / 2 + left
      if nums[mid] > nums[left]{
        minVal = min(nums[left], minVal)
        left = mid + 1
      }else if nums[mid] < nums[left]{
        minVal = min(nums[mid], minVal)
        right = mid - 1
      }else{
        left += 1
      }
    }
    return min(minVal, nums[left], nums[right])
  }
}
