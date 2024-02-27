fat n = if n == 1 then 1 else n * fat (n - 1)

-- Tipos de dados
-- Int, Integer, Float, Double, Char, Bool, Tuple, List

-- Concatenação
-- (++) "aaa" "123"
-- "aaa123"

-- 'a' : "bc"
-- "abc"

-- Comparações
-- "123" == "123"
-- True-- "123" == "1234"
-- False-- "123" /= "1234"
-- True

-- Função head - retorna o primeiro elemento de uma lista
-- head "abcd"
-- 'a'
-- Obs.: retorna um elemento atômico

-- Função tail - retorna todos os elementos menos o primeiro
-- tail "abcd"
-- "bcd"
-- Obs.: retorna uma lista

-- Função init - retorna todos os elementos menos o último
-- init "abcd"
-- "abc"
-- Obs.: retorna uma lista

-- Função last - retorna o último elemento
-- last "abcd"
-- 'd'
-- Obs.: retorna um elemento atômico

-- Função reverse - inverte a lista
-- reverse "abcd"
-- "dcba"

-- Função length - retorna o tamanho da lista
-- length "abcd"
-- 4

-- Função null - verifica se a lista está vazia
-- null "abcd"
-- False
-- null ""
-- True

-- Função take - retorna os n primeiros elementos da lista
-- take 2 "abcd"
-- "ab"

-- Função drop - remove os n primeiros elementos da lista
-- drop 2 "abcdef"
-- "cdef"

-- Função max - retorna o maior valor
-- max 1 2
-- 2

-- Função min - retorna o menor valor
-- min 1 2
-- 1

-- Listas
-- [1, 2, 3, 4, 5]
-- [1..5]
-- [1, 3..10] -> [1, 3, 5, 7, 9]

-- Função sum - retorna a soma dos elementos
-- sum [1, 2, 3, 4, 5]
-- 15

-- Função product - retorna o produto dos elementos
-- product [1, 2, 3, 4, 5]
-- 120

-- Função repeat - repete um elemento
-- take 5 (repeat 3)
-- O repeat está entre parênteses para que o take seja aplicado a ele

-- Criando inha própria função de soma
-- soma u = if null u then 0 else head u + soma (tail u)