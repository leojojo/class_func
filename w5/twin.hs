{-
  Name: Leo Fujita
  Student ID: 71575612
-}

main = print $ take 20 $ twin $ filter isPrime [1..]

isPrime :: Int -> Bool
isPrime n = length[ x | x <- [2..n], n `mod` x == 0 ] == 1

twin :: [Int] -> [(Int, Int)]
twin [] = []
twin (x:y:n) = if x+2 == y
                   then (x, y) : twin n
                   else twin n
