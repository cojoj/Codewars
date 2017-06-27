module MiddleCharacter.Middle where
    
-- https://www.codewars.com/kata/get-the-middle-character

getMiddle :: String -> String
getMiddle s@(_:_:_:_)   = getMiddle $ init $ tail s
getMiddle s             = s