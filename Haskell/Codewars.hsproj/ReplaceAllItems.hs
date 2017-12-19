module ReplaceAllItems where
    
-- https://www.codewars.com/kata/replace-all-items

replaceAll :: Eq a => [a] -> a -> a -> [a]
replaceAll [] _ _ = []
replaceAll (x:xs) o n
    | x == o =      n : replaceAll xs o n
    | otherwise =   x : replaceAll xs o n 