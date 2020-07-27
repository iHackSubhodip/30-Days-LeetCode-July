/*
 Question - Construct Binary Tree from Inorder and Postorder Traversal
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/547/week-4-july-22nd-july-28th/3403/
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
  func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
    return helper(0, inorder.count - 1, inorder, 0, postorder.count - 1, postorder)
  }
  
  func helper(_ inStart: Int,_ inEnd: Int,_ inorder: [Int],_ postStart: Int,_ postEnd: Int,_ postOrder: [Int]) -> TreeNode?{
    if postStart > postEnd { return nil }
    let root = TreeNode(postOrder[postEnd])
    var inorderIndex = 0
    for i in inStart...inEnd{
      if inorder[i] == root.val{
        inorderIndex = i
        break
      }
    }
    root.left = helper(inStart, inorderIndex - 1, inorder, postStart, postStart + inorderIndex - inStart - 1, postOrder)
    root.right = helper(inorderIndex + 1, inEnd, inorder, postEnd - inEnd + inorderIndex, postEnd - 1, postOrder)
    return root
  }
}
