module IsOpposite where
    
import Data.Char

isOpposite :: String -> String -> Bool
isOpposite "" "" = False
isOpposite [] [_] = False
isOpposite [_] [] = False
isOpposite [x] [y] = opposite x y
isOpposite (x:xs) (y:ys) = (opposite x y) && (isOpposite xs ys)

opposite :: Char -> Char -> Bool
opposite x y | isLower x = toUpper x == y
             | isUpper x = toLower x == y