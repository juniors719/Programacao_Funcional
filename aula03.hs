-- 1 .. 1000000 divisíveis por 7 e não por 5

-- divisiveis :: Int
-- divisiveis = length [x | x <- [7, 14 .. 1000000], mod x 5 /= 0]

-- count :: (Integral t, Num a) => t -> a
-- count n = sum [1 | mod n 7 == 0, mod n 5 /= 0, x <- [1 .. n]]

-- Tuplas - Grupo de dados heterogêneos
-- (0, 25)
-- [2, True, "casa"] - Quebra a homogeneidade da lista
-- (2, True, "casa") - Mantém a homogeneidade da tupla

-- eq2g a b c =
--   if a == 0
--     then -- \|| delta < 0
--       error "lascou"
--     else (x0, x1)
--   where
--     delta = (b * b) - (4 * a * c)
--     x0 = (-b + sqrt delta) / (2 * a)
--     x1 = (-b - sqrt delta) / (2 * a)

countSquare n = [(x, y, z) | x <- [1 .. n], y <- [1 .. x], z <- [1 .. y], isSqr x y z]
  where
    isSqr a b c = a ^ 2 == b ^ 2 + c ^ 2
