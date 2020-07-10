/*
 Question - Flatten a Multilevel Doubly Linked List
 Link - > https://leetcode.com/explore/featured/card/july-leetcoding-challenge/545/week-2-july-8th-july-14th/3386/
 */

public class Node {
    public var val: Int
    public var prev: Node?
    public var next: Node?
    public var child: Node?
    public init(_ val: Int) {
        self.val = val
        self.prev = nil
        self.next = nil
        self.child  = nil
    }
}

class Solution {
    func flatten(_ head: Node?) -> Node? {
        let head = head
        flattenNode(head)
        return head
    }
    
    func flattenNode(_ head: Node?){
        guard head != nil else { return }
        var current = head
        
        while current?.child == nil, current?.next != nil{
            current = current?.next
        }
        
        flattenNode(current?.child)
        
        var lastChild = current?.child
        while lastChild?.next != nil {
            lastChild = lastChild?.next
        }
        
        lastChild?.next = current?.next
        current?.next?.prev = lastChild
        current?.next = current?.child
        current?.child?.prev = current
        current?.child = nil
    }
}
