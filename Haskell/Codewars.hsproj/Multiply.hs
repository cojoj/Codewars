module Multiply where
    
multiply :: Integer -> Integer
multiply n = n * (5 ^ numDigits n)
    where numDigits = length . show . abs