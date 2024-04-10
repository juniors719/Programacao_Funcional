fnc a b = a+b

zip' :: [Int] -> [Int] -> (Int -> Int -> Int) -> [Int]
zip' u v f = [f (u!!j) (v!!j) | j <- [0..lm-1]]
    where lu = length u
          lv = length v
          lm = min lu lv
        
-- zip' [1,2,3] [4,5,6] fnc
-- [5,7,9]