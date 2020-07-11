/*
 Question - Subsets
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3387/
 */

class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = [], candidates: [Int] = []
        subsetHelper(nums,&result,&candidates,0)
        return result
    }
    
    // //O(n^n), O(n)
    func subsetHelper(_ nums: [Int],_ result: inout [[Int]],_ candidates: inout [Int],_ startIndex: Int){
        result.append(candidates)
        for i in startIndex..<nums.count{
            candidates.append(nums[i])
            subsetHelper(nums, &result,&candidates, i+1)
            candidates.removeLast()
        }
    }
}
