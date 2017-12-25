module HexToDecimal where
    
import Numeric
import Data.Char
    
hexToDec :: String -> Int
hexToDec s = rshowIntAtBase 16 intToDigit number ""
    where number = read s :: Int