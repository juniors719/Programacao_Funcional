upper :: Char -> Char
upper c = if null f
    then
        c
    else
        f !! 0
    where 
        a = ['a'..'z']
        b = ['A'..'Z']
        z = zip a b
        f = [ snd t | t <- z, fst t == c ]

capWord :: String -> String
capWord "" = ""
capWord [a] = [upper a]
capWord (a:s) = (upper a) : s


{- cap :: String -> String
cap "" = ""
cap s = map (upper )
    where
        w = words s -}
