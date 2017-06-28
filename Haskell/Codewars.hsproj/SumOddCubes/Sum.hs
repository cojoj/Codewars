module SumOddCubes.Sum where
    
-- https://www.codewars.com/kata/sum-of-odd-cubed-numbers
    
oddCubed :: [Int] -> Int
oddCubed x = sum $ map (^3) $ filter odd x