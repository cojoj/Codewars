-- https://www.codewars.com/kata/partial-word-searching

module Partial where
    
import Data.List(isSubsequenceOf)
import Data.Char(toLower)
    
wordSearch :: String -> [String] -> Maybe [String]
wordSearch query seq = let  contains a b = isSubsequenceOf (capitalize a) (capitalize b)
                                where capitalize a = [ toLower c | c <- a ]
                            filtered = filter (contains query) seq
                       in case filtered of
                           [] -> Nothing
                           _  -> Just filtered