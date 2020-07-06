/*
 Question - Plus One
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3382/
 */

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits, index = digits.count - 1
        while index >= 0{
            if digits[index] < 9{
                digits[index] += 1
                return digits
            }
            digits[index] = 0
            index -= 1
        }
        digits.insert(1, at: 0)
        return digits
    }
}
