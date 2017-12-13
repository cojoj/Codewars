module ExclamationMarks.RemoveEnd where
    
remove :: String -> String
remove = reverse . dropWhile (== '!') . reverse