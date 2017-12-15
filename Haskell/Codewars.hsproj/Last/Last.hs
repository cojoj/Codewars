module Last.Last where
    
last :: [a] -> a
last = head . reverse