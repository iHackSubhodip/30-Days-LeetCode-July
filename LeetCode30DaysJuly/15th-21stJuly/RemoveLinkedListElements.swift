/*
 Question - Remove Linked List Elements
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/546/week-3-july-15th-july-21st/3396/
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val;self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) {self.val = val; self.next = next; }
}

class Solution {
  func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    guard let head = head else { return nil }
    head.next = removeElements(head.next, val)
    return head.val != val ? head : head.next
  }
}
