---
title: LeetCode 6 ZigZag Conversion 题解
date: 2018-12-25
categories:
    - LeetCode
---

# LeetCode 6 [ZigZag Conversion](https://leetcode.com/problems/zigzag-conversion/) 题解

## 问题描述:

> The string `"PAYPALISHIRING"` is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

## 例:

> **Example 1:**
>
> ```
> Input: s = "PAYPALISHIRING", numRows = 3
> Output: "PAHNAPLSIIGYIR"
> ```
>
> **Example 2:**
>
> ```
> Input: s = "PAYPALISHIRING", numRows = 4
> Output: "PINALSIGYAHRPI"
> Explanation:
> 
> P     I    N
> A   L S  I G
> Y A   H R
> P     I
> ```

## Python实现:

```python
class Solution(object):
    def convert(self, s, num_rows):
		if num_rows == 1 or num_rows >= len(s):
			return s

		l = [''] * num_rows
		step = 0
		for i in s:
			if step == num_rows-1:
				path = -1
			elif step == 0:
				path = 1
			l[step] += i
			step += path

		return ''.join(l)
```