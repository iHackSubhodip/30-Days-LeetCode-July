/*
 Question - Same Tree
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3389/
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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let p = p else { return q == nil }
        guard let q = q else { return p == nil }
        if p.val != q.val { return false }
        return isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
    }
}
