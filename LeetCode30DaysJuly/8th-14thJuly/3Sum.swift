/*
 Question - 3Sum
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3384/
 */

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else { return [] }
        var result = Set<[Int]>(), numsSorted = nums.sorted()
        for i in 0..<nums.count{
            var start = i+1, end = nums.count - 1
            while start < end{
                let sum = numsSorted[start] + numsSorted[end] + numsSorted[i]
                if sum == 0{
                    result.insert([numsSorted[start], numsSorted[end], numsSorted[i]])
                    start += 1
                }else if sum < 0{
                    start += 1
                }else{
                    end -= 1
                }
            }
        }
        return Array(result)
    }
}
