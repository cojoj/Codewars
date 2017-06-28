module CountingDuplicates.Dupes where
    
-- https://www.codewars.com/kata/counting-duplicates
    
import Data.Char

duplicateCount :: String -> Int
duplicateCount = length . filter (\ x -> x > 1) . fmap snd . count . fmap toLower

count :: Eq a => [a] -> [(a, Int)]
count [] = []
count a@(x: xs) = (x, length $ filter (x==) a) : count filtered
    where filtered = filter (x/=) xs