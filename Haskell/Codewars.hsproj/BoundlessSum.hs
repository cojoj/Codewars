module BoundlessSum where
    
-- https://www.codewars.com/kata/sum-without-highest-and-lowest-number
    
import Data.List
    
sumArray :: Maybe [Int] -> Int
sumArray Nothing            = 0
sumArray (Just [])          = 0
sumArray (Just (x:[]))      = 0
sumArray (Just (x:y:[]))    = 0
sumArray (Just x)           = sum bounded
                                where bounded = tail $ init $ sort x