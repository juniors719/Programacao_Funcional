atividade = "2"

-- Substitua seus dados
nome = "Francisco Djalma Pereira da Silva Júnior"

matricula = "554222"

-- 1
-- Sejam as tuplas u e v de inteiros
-- tal que exista um inteiro k onde
-- u = kv ou v = ku
-- então u e v são mútiplos. Construa
-- função que determine se duas
-- tuplas de inteiros são múltiplas.
isMult :: (Int, Int) -> (Int, Int) -> Bool
isMult (a, b) (c, d) = mod c a == 0 && mod b d == 0 || mod a d == 0 && mod b c == 0

-- 2
-- Sejam todos os triângulos retângulos
-- de perímetro p e de lados inteiros.
--   representados por tuplas (a,b,c)
-- com  a>=b>=c. Criar
--  função que determine
-- o total destes triângulos dado p .

tot'tri :: Int -> Int
tot'tri n = length [(a, b, c) | a <- [1 .. n], b <- [1 .. a], c <- [1 .. b], a + b + c == n, a ^ 2 == b ^ 2 + c ^ 2]
