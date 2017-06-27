module SumRecursively.Sum where
    
-- https://www.codewars.com/kata/get-list-sum-recursively
    
sumR :: [Int] -> Int
sumR [] = 0
sumR (x:xs) = x + sumR xs