module Hal where
    
-- https://www.codewars.com/kata/highest-and-lowest
    
import Data.List.Split
import Data.List
    
highAndLow :: String -> String
highAndLow input = let  max = maximum splitted
                        min = minimum splitted
                   in intercalate " " [show max, show min]
    where splitted = map read $ words input :: [Integer]