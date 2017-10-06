main = do cs <- getContents
          putStr $ nLines 10 cs
          putStrLn "..."
          putStr $ nLines 10 $ takeLast 10 cs

nLines n cs = unlines $ take n $ lines cs
takeLast n cs = unlines $ reverse $ take n $ reverse $ lines cs
