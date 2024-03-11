-- Typeclasses

-- :t 5
-- 5 :: Num a => a

-- :t (+)
-- (+) :: Num a => a -> a -> a

-- :t (+) 2 3
-- (+) 2 3 :: Num a => a

-- Funções em haskell recebem apenas um argumento, mas podem ser parcialmente aplicadas.
-- Uma função que recebe dois argumentos na verdade recebe um argumento e retorna uma função que recebe o segundo argumento.

-- :t sqrt
-- sqrt :: Floating a => a -> a

-- :t (==)
-- (==) :: Eq a => a -> a -> Bool

-- :t (/=)
-- (/=) :: Eq a => a -> a -> Bool

-- :t (>)
-- (>) :: Ord a => a -> a -> Bool

-- :t show
-- show :: Show a => a -> String

-- show $ max 1 2
-- "2"

-- show -> transforma um valor em uma string

-- :t read
-- read :: Read a => String -> a
-- transforma uma string em um valor de um tipo específico

-- read "5" :: Int
-- 5

-- read "[1,2,3]" :: [Int]
-- [1,2,3]

-- minBound :: Int
-- -9223372036854775808

-- maxBound :: Bool
-- True

-- minBound -> retorna o menor valor de um tipo
-- maxBound -> retorna o maior valor de um tipo
