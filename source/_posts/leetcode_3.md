---
title: LeetCode 3 Longest Substring Without Repeating Characters 题解
date: 2018-11-08
categories:
  - Python
  - LeetCode
---

# LeetCode 3 [Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters) 题解

## 问题描述：

>​	Given a string, find the length of the **longest substring** without repeating characters.
>

## 例：

>**Example 1:**
>
>```
>Input: "abcabcbb"
>Output: 3 
>Explanation: The answer is "abc", with the length of 3. 
>```
>
>**Example 2:**
>
>```
>Input: "bbbbb"
>Output: 1
>Explanation: The answer is "b", with the length of 1.
>```
>
>**Example 3:**
>
>```
>Input: "pwwkew"
>Output: 3
>Explanation: The answer is "wke", with the length of 3. 
>             Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
>```

## Python实现：

1. 解1：

    ​	经典的问题，滑动窗口的实现思路来实现，用一个字典来记录出现过的字符的位置，如果之后再出现就记录新的位置然后将重复的字符从滑动窗口中删除

```python
class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        max_len = 0
        num = 0
        begin = 0
        ascii_map = {}
        for i in range(176):
        	ascii_map[i] = -1
        for i in range(len(s)+1):
        	if i == len(s):
        		if max_len < num - begin:
        			max_len = num -begin
        		break
        	char_s = s[i]
        	ascii_s = ord(char_s)
    		if ascii_map[ascii_s] >= begin and num > ascii_map[ascii_s]:
    			if max_len < num - begin:
    				max_len = num - begin
    			begin = ascii_map[ascii_s] + 1
    			ascii_map[ascii_s] = num
    		ascii_map[ascii_s] = num
    		num += 1
    		i += 1
        return max_len
```

