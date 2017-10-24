main = print $ take 20 $ filter (not . isOdd) [1..]

isOdd :: Int -> Bool
isOdd n = n `mod` 2 == 1
