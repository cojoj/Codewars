module BinToDecimal where
    
import Data.Char (digitToInt)
import Data.List (foldl')

binToDec :: String -> Int
binToDec = foldl' (\acc x -> acc * 2 + digitToInt x) 0