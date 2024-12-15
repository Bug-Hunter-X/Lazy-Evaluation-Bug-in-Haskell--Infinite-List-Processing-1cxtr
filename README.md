# Haskell Lazy Evaluation Bug

This repository demonstrates a subtle bug in Haskell related to lazy evaluation and infinite lists. The `bug.hs` file contains code that attempts to process an infinite list, leading to non-termination under certain conditions. The `bugSolution.hs` file provides a corrected version.

## Bug Description
The function `processList` aims to find the first element in a list that is greater than 10. However, when given an infinite list, it will not terminate if no element satisfies the condition.  The issue stems from Haskell's lazy evaluation; the list comprehension doesn't eagerly evaluate elements, and potentially never reaches an element that meets the criteria.

## Solution
The solution involves using `takeWhile` to process only a finite portion of the infinite list.  This ensures termination, while still achieving the intended purpose of finding the first element above 10.