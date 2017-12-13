module Shortcut.Shortcut where
    
import Data.Char (isLower)

shortcut :: String -> String
shortcut = filter (not . test)
    where 
        test :: Char -> Bool
        test x =  elem x "aeiou" && isLower x