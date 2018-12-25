---
title: LeetCode 2 Add Two Numbers 题解
date: 2018-11-06
categories:
    - LeetCode
---
# LeetCode 2 [Add Two Numbers](https://leetcode.com/problems/add-two-numbers/) 题解
## 问题描述:
>   ​	You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
​	You may assume the two numbers do not contain any leading zero, except the number 0 itself.

## 例：
> Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.

## Python 实现：

**1. 解1：**

```python
# Definition for singly-linked list.
class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution(object):
    def addTwoNumbers(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        num1 = self.getNume(l1)
        num2 = self.getNume(l2)
        sum_num = str(num1 + num2)
        sum_node = ListNode(int(sum_num[-1]))
        num_node = sum_node
        for each in str(sum_num)[-2::-1]:
        	last_node = ListNode(int(each))
        	num_node.next = last_node
        	num_node = last_node

        return sum_node

    def getNume(self, ln):
    	num = ""
        while True:
        	num = str(ln.val) + num
        	if ln.next is None:
        		break
        	ln = ln.next
        if num:
        	return int(num)
        return 0
```

**2. 解2：**

参考LeetCode 提交中 60ms 的实现

```python
class Solution(object):
    def addTwoNumbers(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        if l1 == None:
            return l2
        elif l2 == None:
            return l1
        
        carry = 0
        pre_l1 = None
        head = l1
        while (l1 != None and l2 != None):
            tmp_sum = l1.val + l2.val + carry
            carry = int((tmp_sum)/10)
            l1.val = (tmp_sum)%10
            
            pre_l1 = l1
            l1, l2 = l1.next, l2.next
        
        if l2 != None:
            pre_l1.next = l2
            l1 = pre_l1.next
            
        while l1 != None and carry == 1:
            tmp_sum = l1.val+carry
            l1.val = (tmp_sum)%10
            carry = int((tmp_sum)/10)
            pre_l1, l1 = l1, l1.next

        if carry == 1:
            pre_l1.next = ListNode(1)
            
        return head
```