{-
  Name: Leo Fujita
  Student ID: 71575612
-}

main = do cs <- getContents
          putStr $ takeFirst 5 cs ++ "...\n" ++ takeLast 5 cs

takeFirst n cs = unlines $ take n $ lines cs
takeLast n cs = unlines $ reverse $ take n $ reverse $ lines cs
