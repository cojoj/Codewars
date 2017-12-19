module TwiceLinear where
    
-- https://www.codewars.com/kata/twice-linear
    
import Data.List
import qualified Data.Set as S

generateSeq :: [Integer]
generateSeq = unfoldr (fmap foo . S.minView) $ S.singleton 1 
    where foo (x, s) = (x, S.insert (2*x+1) $ S.insert (3*x+1) s)

dblLinear :: Int -> Integer
dblLinear n = generateSeq !! n