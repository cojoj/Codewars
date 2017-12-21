module If where

_if :: Bool -> a -> a -> a
_if b x y  | b == True = x
           | otherwise = y 