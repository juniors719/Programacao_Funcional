somaVec [] = 0
somaVec [a] = a
somaVec (c : lst) = c + somaVec lst