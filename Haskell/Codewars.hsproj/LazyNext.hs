module LazyNext where
    
next :: Eq a => a -> [a] -> Maybe a
next _ [] = Nothing
next item [x] = Nothing
next item (x:y:xs) = if item == x then Just y else next item (y:xs)