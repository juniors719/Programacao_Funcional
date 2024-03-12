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

cap :: String -> String
cap "" = ""
cap s = map (upper )
    where
        w = words s
