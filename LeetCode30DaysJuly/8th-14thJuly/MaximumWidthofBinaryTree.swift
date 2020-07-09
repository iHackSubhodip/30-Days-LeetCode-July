/*
 Question - Maximum Width of Binary Tree
 Link - > https://leetcode.com/explore/challenge/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3385/
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
class Solution {
    func widthOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var maxWidth = 1, queue = [(TreeNode, Int)]()
        queue.append((root, 0))
        while !queue.isEmpty{
            let count = queue.count, firstNode = queue.first!,lastNode = queue.last!
            maxWidth = max(maxWidth, lastNode.1 - firstNode.1 + 1)
            for _ in 0..<count{
                let (node, val) = queue.removeFirst()
                if let leftNode = node.left{
                    queue.append((leftNode, val * 2 - 1))
                }
                
                if let rightNode = node.right{
                    queue.append((rightNode, val * 2))
                }
            }
        }
        return maxWidth
    }
}
