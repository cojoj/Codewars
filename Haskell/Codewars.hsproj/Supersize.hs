module Supersize where
    
import Data.List

superSize :: Integer -> Integer
superSize n = (read . reverse . sort $ show n) :: Integer