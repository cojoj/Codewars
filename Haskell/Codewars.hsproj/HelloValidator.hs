module HelloValidator where
    
import Data.List

validateHello :: String -> Bool
validateHello "hello_world" = True
validateHello cs    | isInfixOf cs "hello" = True
                    | isInfixOf cs "ciao"  = True
                    | isInfixOf cs "salut" = True
                    | isInfixOf cs "hallo" = True
                    | isInfixOf cs "hola"  = True
                    | isInfixOf cs "ahoj"  = True
                    | isInfixOf cs "czesc" = True
                    | otherwise            = False