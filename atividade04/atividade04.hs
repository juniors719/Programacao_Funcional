atividade = "04"

nome = "Francisco Djalma Pereira da Silva Júnior"

matricula = "554222"

-- 1

replace :: String -> String -> String -> String
replace [] _ _ = []
replace str@(x : xs) from to
  | from `isPrefixOf` str = to ++ replace (drop (length from) str) from to
  | otherwise = x : replace xs from to
  where
    isPrefixOf [] _ = True
    isPrefixOf _ [] = False
    isPrefixOf (y : ys) (z : zs)
      | y == z = ys `isPrefixOf` zs
      | otherwise = False

-- 2

lsSplit :: [Int] -> ([Int], Int, [Int])
lsSplit [] = ([], 0, [])
lsSplit [x] = ([], x, [])
lsSplit (x : xs)
  | x > maximum xs = ([], x, xs)
  | otherwise = let (a, n, b) = lsSplit xs in (x : a, n, b)

-- 3

selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort xs =
  let sorted = selectionSort' xs
   in sorted

selectionSort' :: Ord a => [a] -> [a]
selectionSort' [] = []
selectionSort' xs =
  let maxVal = maximum xs
      rest = remove maxVal xs
   in maxVal : selectionSort' rest

remove :: Eq a => a -> [a] -> [a]
remove _ [] = []
remove x (y : ys)
  | x == y = remove x ys
  | otherwise = y : remove x ys
