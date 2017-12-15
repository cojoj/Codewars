module Plural.Plural where
    
data Grammar = Singular | Plural

plural :: (Num a, Eq a) => a -> Grammar
plural x
    | x == 1 = Singular
    | otherwise = Plural