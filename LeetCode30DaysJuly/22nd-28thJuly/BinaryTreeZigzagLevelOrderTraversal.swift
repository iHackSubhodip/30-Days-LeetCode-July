/*
 Question - Binary Tree Zigzag Level Order Traversal
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/547/week-4-july-22nd-july-28th/3398/
 */

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}


class Solution {
  func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    var result = [[Int]]()
    guard let root = root else { return result }
    var isReversed = false, nodeQueue = [root]
    while !nodeQueue.isEmpty{
      let currentLevel = nodeQueue.map { $0.val }
      result.append(isReversed ? currentLevel.reversed() : currentLevel)
      isReversed = !isReversed
      nodeQueue = nodeQueue.flatMap { [$0.left, $0.right] }.compactMap { $0 }
    }
    return result
  }
}
