atividade = "3"

nome = "Francisco Djalma Pereira da Silva Júnior"

matricula :: String
matricula = "554222"

-- Recebe uma string s e retorna uma lista de tuplas (c, f) onde c é umcaractere em s e f é o total de vezes que c ocorre em s. Exemplo,

-- >> tls "aabcbaccc"
-- [('a', 3), ('b', 2), ('c', 4)]

-- OBS: a ordem das tuplas na lista de saída não é importante.

-- Função para verificar se um caractere está presente em uma lista de tuplas
-- Retorna True se o caractere estiver presente, False caso contrário
isPresent :: Char -> [(Char, Int)] -> Bool
isPresent _ [] = False
isPresent c ((x, _) : xs)
  | c == x = True
  | otherwise = isPresent c xs

-- Função para incrementar a frequência de um caractere em uma lista de tuplas
-- Se o caractere já estiver presente, incrementa a frequência
-- Se não estiver presente, adiciona uma nova tupla com a frequência 1
increment :: Char -> [(Char, Int)] -> [(Char, Int)]
increment c [] = [(c, 1)]
increment c ((x, f) : xs)
  | c == x = (x, f + 1) : xs
  | otherwise = (x, f) : increment c xs

-- Função principal
-- Percorre a string, atualizando a lista de tuplas de acordo com a frequência dos caracteres
tls :: String -> [(Char, Int)]
tls = foldr (\x acc -> if isPresent x acc then increment x acc else (x, 1) : acc) []

------------------------------------------------------------------------------------------------

-- Recebe uma string s de entrada e retorna uma tupla do tipo (p,f) onde p é a palavra mais frequente em s e f o valor de quantas vezes ela ocorre. Exemplo,

-- >> sfq "a casa. Ela casa. casa!
-- ("casa", 3)

-- OBS:  Note que tokens como ponto e exclamação adjacentes as palavras não devem interferir na contagem.

-- Função principal
-- Recebe uma string s e retorna uma tupla com a palavra mais frequente e a sua frequência
sfq :: String -> (String, Int)
sfq s = mostFrequent (countWords s [])

-- Função que retorna a palavra mais frequente em uma lista de tuplas
mostFrequent :: [(String, Int)] -> (String, Int)
mostFrequent [] = ("", 0)
mostFrequent ((word, freq) : rest)
  | freq > maxFreq = (word, freq)
  | otherwise = (maxWord, maxFreq)
  where
    (maxWord, maxFreq) = mostFrequent rest

-- Função que verifica se um caractere é uma letra
isalpha :: Char -> Bool
isalpha c = c `elem` ['a' .. 'z'] || c `elem` ['A' .. 'Z']

-- Função que conta a frequência de palavras em uma string
countWords :: String -> [(String, Int)] -> [(String, Int)]
countWords [] acc = acc
countWords s acc
  | null word = countWords rest acc
  | otherwise = countWords rest (updateCount word acc)
  where
    (word, rest) = extractWord s

-- Função que extrai a primeira palavra de uma string
extractWord :: String -> (String, String)
extractWord [] = ([], [])
extractWord (c : cs)
  | isalpha c = let (word, rest) = extractWord cs in (c : word, rest)
  | otherwise = ([], cs)

-- Função que atualiza a frequência de uma palavra em uma lista de tuplas
updateCount :: String -> [(String, Int)] -> [(String, Int)]
updateCount word [] = [(word, 1)]
updateCount word ((w, f) : acc)
  | word == w = (w, f + 1) : acc
  | otherwise = (w, f) : updateCount word acc
