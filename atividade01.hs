atividade = "1"

-- Substitua seus dados
nome = "Francisco Djalma Pereira da Silva Junior"

matricula = "554222"

-- 1
-- Recebe uma string e
-- retorna-a sem as vogais.
noVog :: String -> String
noVog s = [x | x <- s, x `notElem` "aeiouAEIOU"]

-- 2
-- retorna quantas vezes x é divisível por n
num'divs :: Int -> Int -> Int
num'divs x n = length [y | y <- [1 .. x], mod y n == 0]

-- 3
-- Dado um inteiro n. determinar se
-- ele é ou não um número primeo
is'prime :: Int -> Bool
is'prime n = length [x | x <- [1 .. n], mod n x == 0] == 2

-- 4
-- inverte um inteiro, por exemplo
-- o inverso de 251 é 152.
int'inv :: Int -> Int
int'inv n = read (reverse (show n)) :: Int
