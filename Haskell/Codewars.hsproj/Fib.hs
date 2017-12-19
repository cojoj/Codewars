module Fib where
    
-- https://www.codewars.com/kata/fibonacci

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = (fib $ n - 1) + (fib $ n - 2)