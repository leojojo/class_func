main = print $ take 100 $ filter isPrime [1..]

isPrime :: Int -> Bool
isPrime n = length[ x | x <- [2..n], n `mod` x == 0 ] == 1
