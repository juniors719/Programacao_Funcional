atividade = "05"
nome = "Francisco Djalma Pereira da Silva Júnior"
matricula = "554222"

-- 1

bis :: Int -> Bool 
bis n = if (mod n 4 == 0) && (mod n 100 /= 0) || (mod n 400 == 0) then True else False

-- 2

temp :: Float -> Char -> Char -> Float
temp t fr to = 
                if fr == 'C'
                    then if to == 'F'
                        then (t * 9/5) + 32
                        else if to == 'K'
                            then t + 273.15
                            else t
                else if fr == 'F'
                    then if to == 'C'
                        then (t - 32) * 5/9
                        else if to == 'K'
                            then (t - 32) * 5/9 + 273.15
                            else t
                else if fr == 'K'
                    then if to == 'C'
                        then t - 273.15
                        else if to == 'F'
                            then (t - 273.15) * 9/5 + 32
                            else t
                    else t

-- 3

coin :: String -> [(char, Float)] -> Float 
coin s m = sum [v | (c, v) <- m, elem c s]
