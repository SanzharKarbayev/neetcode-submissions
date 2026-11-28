/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var previousNode: ListNode? = nil
        var currentNode = head
        while let node = currentNode {
            let nextNode = node.next
            node.next = previousNode
            previousNode = node
            currentNode = nextNode
        }

        return previousNode
    }
}
