noVog :: [Char] -> [Char]
noVog s = [x | x <- s, x `notElem` "aeiou"]

num'divs :: Int -> Int -> Int
num'divs x n =
  if mod x n == 0
    then 1 + num'divs x (n - 1)
    else 0

is'prime :: Int -> Bool
is'prime n = null (h n)
  where
    h x = [d | d <- [2 .. x], d ^ 2 <= x, mod x d == 0]

-- Essa função is'prime recebe um número e retorna True se o número for primo e False caso contrário
-- Ela utiliza a função h que recebe um número e retorna uma lista com todos os divisores do número até a raiz quadrada do número
-- Se a lista retornada por h for vazia, o número é primo

g :: (Integral t) => t -> [t]
g j = if j == 0 then [] else mod j 10 : g (div j 10)

-- Essa função g recebe um número e retorna uma lista com os dígitos do número
-- Ex: g 1234 = [4,3,2,1]

-- words "a casa da menina caiu"
-- ["a","casa","da","menina","caiu"]

-- unwords ["a", "casa", "caiu"]
-- "a casa caiu"
