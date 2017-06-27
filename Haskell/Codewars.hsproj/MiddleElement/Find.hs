module MiddleElement.Find where

-- https://www.codewars.com/kata/find-the-middle-element

import Data.List

gimme :: Ord a => (a, a, a) -> Int
gimme (a, b, c) 
    | middle == a = 0
    | middle == b = 1
    | middle == c = 2
    where middle = sort [a, b, c] !! 1