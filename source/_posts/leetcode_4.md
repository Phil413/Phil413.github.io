---
title: LeetCode 4 Median of Two Sorted Arrays 题解
date: 2018-11-09
categories:
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

3. 解3: 

    二分查找实现

    ```python
    class Solution(object):
        def findMedianSortedArrays(self, nums1, nums2):
            """
            :type nums1: List[int]
            :type nums2: List[int]
            :rtype: float
            """
            len_nums1 = len(nums1)
            len_nums2 = len(nums2)
            if len_nums1 > len_nums2:
            	return self.findMedianSortedArrays(nums2, nums1)
    
            half_len = len_nums1 + len_nums2
            l = 0
            r = len_nums1 * 2
            while l <= r:
            	nums1_cut = (l + r)//2
            	nums2_cut = half_len - nums1_cut
    
            	l1 = float('-inf') if (nums1_cut == 0) else nums1[(nums1_cut-1)//2]
            	l2 = float('-inf') if (nums2_cut == 0) else nums2[(nums2_cut-1)//2]
            	r1 = float('inf') if (nums1_cut == len_nums1 * 2) else nums1[nums1_cut//2]
            	r2 = float('inf') if (nums2_cut == len_nums2 * 2) else nums2[nums2_cut//2]
    
    	        if l1 > r2:
    	        	r = nums1_cut - 1
    	        elif l2 > r1:
    	        	l = nums1_cut + 1
    	        else:
    	        	return (max(l1,l2) + min(r1, r2)) // 2
    ```


