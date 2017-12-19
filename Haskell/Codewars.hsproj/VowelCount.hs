module VowelCount where

-- https://www.codewars.com/kata/vowel-count
    
import Data.Char
    
getCount :: String -> Int
getCount = foldl countVowel 0

countVowel :: Int -> Char -> Int
countVowel x y
    | isVowel y = x + 1
    | otherwise = x
    where isVowel x = elem x "aeiou"