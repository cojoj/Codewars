module MaybeConcat where
    
concatMaybe :: Maybe String -> Maybe String -> Maybe String
concatMaybe a b = pure (++) <*> a <*> (pure (++) <*> Just " " <*>  b