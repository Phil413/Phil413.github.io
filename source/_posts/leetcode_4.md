---
title: LeetCode 4 Median of Two Sorted Arrays 题解
date: 2018-11-09
categories:
    - Python
    - LeetCode
---

# LeetCode 4 [Median of Two Sorted Arrays](https://leetcode.com/problems/median-of-two-sorted-arrays)  题解

## 问题描述：

> There are two sorted arrays **nums1** and **nums2** of size m and n respectively.	
>
> Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
>
> You may assume **nums1** and **nums2** cannot be both empty.

## 例：

>**Example 1:**
>
>```
>nums1 = [1, 3]
>nums2 = [2]
>
>The median is 2.0
>```
>
>**Example 2:**
>
>```
>nums1 = [1, 2]
>nums2 = [3, 4]
>
>The median is (2 + 3)/2 = 2.5
>```

## Python实现：

1. 解1：

    ```python
    class Solution(object):
        def findMedianSortedArrays(self, nums1, nums2):
            nums = nums1 + nums2
            nums.sort()
            nums_len = len(nums)
            middle = (nums[nums_len//2] + nums[~nums_len//2])/2.0
            return middle
    ```

2. 解2：

    LeetCode 提交中 50ms 的实现

    ```python
    
    class Solution(object):
        def findMedianSortedArrays(self, nums1, nums2):
            l=nums1+nums2
            l.sort()
            a=len(l)
            if len(l)%2==1:
                return l[a/2]
            else:
                return (l[a/2-1]+l[a/2])/2.0
    ```

