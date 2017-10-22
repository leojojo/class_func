{-
  Name: Leo Fujita
  Student ID: 71575612
-}

main = do cs <- getContents
          putStr $ unlines $ numberList 1 $ lines cs

numberList n [] = []
numberList n (ss:xs) = (show n ++ " " ++ ss) : (numberList (n+1) xs)
