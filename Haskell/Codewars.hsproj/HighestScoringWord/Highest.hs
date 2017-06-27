module HighestScoringWord.Highest where
    
-- https://www.codewars.com/kata/highest-scoring-word
    
import Data.List
import Data.Char
import Data.Maybe

high :: String -> String
high "" = ""
high myStr = let    wordsArray = words myStr
                    scoresArray = fmap values wordsArray
                    summedArray = fmap (\ x -> sum $ catMaybes x) scoresArray
                    maxValue = maximum summedArray
                    highestElemIndex = fromJust $ elemIndex maxValue summedArray
             in wordsArray !! highestElemIndex
                 
values :: String -> [Maybe Int]
values [] = []
values (x:xs) = (lookup x something) : (values xs)
    where something = zip ['a'..'z'] [1..26]