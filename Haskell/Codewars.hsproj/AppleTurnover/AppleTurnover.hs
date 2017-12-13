module AppleTurnover.AppleTurnover where
    
apple :: Either String Int -> String
apple (Left x)  = response $ read x
apple (Right x) = response x

response :: Int -> String
response x = if x*x > 1000 then "It's hotter than the sun!!" else "Help yourself to a honeycomb Yorkie for the glovebox."