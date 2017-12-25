module IsUpperCase where
    
import Data.Char
    
isUpperCase :: String -> Bool
isUpperCase xs = foldr (&&) True $ test xs
    where test xs = fmap (\x -> if isAlpha x then isUpper x else True) xs