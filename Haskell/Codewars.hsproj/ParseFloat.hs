module ParseFloat where
    
import Data.Maybe
import Text.Read

parseFloat :: String -> Maybe Float
parseFloat = readMaybe