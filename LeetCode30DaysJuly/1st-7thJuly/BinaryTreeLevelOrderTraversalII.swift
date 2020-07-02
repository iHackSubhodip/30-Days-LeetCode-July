/*
 Question - Binary Tree Level Order Traversal II
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/544/week-1-july-1st-july-7th/3378/
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil;self.right = nil; }
    public init(_ val: Int) { self.val = val;self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard let root = root else { return result }
        var currentLevel = [root]
        while !currentLevel.isEmpty{
            let currentLevelVals = currentLevel.map{ $0.val }
            result.insert(currentLevelVals, at: 0)
            currentLevel = currentLevel.flatMap { [$0.left, $0.right] }.compactMap { $0 }
        }
        return result
    }
}
