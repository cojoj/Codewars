module Last where
    
last :: [a] -> a
last = head . reverse