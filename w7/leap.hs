import System.Environment

main = do args <- getArgs
          print $ leap $ read $ head args

leap::Int -> Bool
leap y | y `mod` 400 == 0 = True
       | y `mod` 100 == 0 = False
       | y `mod` 4 == 0   = True
       | otherwise        = False
