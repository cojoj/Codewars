module RelativePrimes.RelativePrimes where
    
relativelyPrime :: Integral t => t -> [t] -> [t]
relativelyPrime n l = filter (\a -> gcd a n == 1) l