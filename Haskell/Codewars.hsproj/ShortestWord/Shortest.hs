module ShortestWord.Shortest where
    
-- https://www.codewars.com/kata/shortest-word
    
import Data.List
    
find_shortest :: String -> Integer
find_shortest x = toInteger $ length $ head $ sortBy (\ x y -> length x `compare` length y) $ words x