module ToLeetSpeak where
    
-- https://www.codewars.com/kata/57c1ab3949324c321600013f

import qualified Data.Map as Map
import Data.Maybe

toLeetSpeak :: [Char] -> [Char]
toLeetSpeak "" = ""
toLeetSpeak (x:xs) = translate x dictionary : toLeetSpeak xs

type Dictionary = Map.Map Char Char

translate :: Char -> Dictionary -> Char
translate ' ' d = ' '
translate ch d = fromJust $ Map.lookup ch d 

dictionary :: Dictionary
dictionary = Map.fromList tuples
    where tuples = [
                ('A', '@'),
                ('B', '8'),
                ('C', '('),
                ('D', 'D'),
                ('E', '3'),
                ('F', 'F'),
                ('G', '6'),
                ('H', '#'),
                ('I', '!'),
                ('J', 'J'),
                ('K', 'K'),
                ('L', '1'),
                ('M', 'M'),
                ('N', 'N'),
                ('O', '0'),
                ('P', 'P'),
                ('Q', 'Q'),
                ('R', 'R'),
                ('S', '$'),
                ('T', '7'),
                ('U', 'U'),
                ('V', 'V'),
                ('W', 'W'),
                ('X', 'X'),
                ('Y', 'Y'),
                ('Z', '2')
             ]