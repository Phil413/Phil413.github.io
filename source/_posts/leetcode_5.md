---
title: LeetCode 5 Longest Palindromic Substring 题解
date: 2018-12-24
categories:
    - LeetCode
---
# LeetCode 5 [Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring/) 题解
## 问题描述:
> Given a string **s**, find the longest palindromic substring in **s**. You may assume that the maximum length of **s** is 1000.

## 例:
> **Example 1:**
>
> ```
> Input: "babad"
> Output: "bab"
> Note: "aba" is also a valid answer.
> ```
>
> **Example 2:**
>
> ```
> Input: "cbbd"
> Output: "bb"
> ```

## Python实现:

``` Python
class Solution(object):
    def longestPalindrome(self, s):
        star_index = 0
        max_len = 1
        s_len = len(s)
        if s_len < 2:
            return s
        if s == s[::-1]:
            return s

        for i in xrange(1, s_len):
            odd = s[i - max_len - 1:i + 1]
            even = s[i - max_len:i + 1]
            if i - max_len - 1 >= 0 and odd == odd[::-1]:
                star_index = i - max_len - 1
                max_len += 2
                continue
            if i - max_len >= 0 and even == even[::-1]:
                star_index = i - max_len
                max_len += 1
        return s[star_index:star_index + max_len]
```