---
title: LeetCode 1 题解
categories: 
	- Python
	- LeetCode
---
# LeetCode 1 题解
## 问题描述:
> Given an array of integers, return indices of the two numbers such that they add up to a specific target.
> You may assume that each input would have exactly one solution, and you may not use the same element twice.

## 例:
> Given nums = [2, 7, 11, 15], target = 9,
> Because nums[0] + nums[1] = 2 + 7 = 9,
> return [0, 1].

## Python实现:

``` Python
class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        existing_nums = dict()
        for i, num in enumerate(nums):
            if (target-num in existing_nums):
                return [existing_nums[target-num], i]
            existing_nums[num]=i
        return []
```
