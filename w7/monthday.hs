import System.Environment

main = do args <- getArgs
          print $ monthDay (read $ args !! 0) (read $ args !! 1)

monthDay::Int -> Int -> Int
monthDay y m | m == 2    = feb y
             | m == 4    = 30
             | m == 6    = 30
             | m == 9    = 30
             | m == 11   = 30
             | otherwise = 31

feb::Int -> Int
feb y | leap y    = 29
      | otherwise = 28

leap::Int -> Bool
leap y | y `mod` 400 == 0 = True
       | y `mod` 100 == 0 = False
       | y `mod` 4 == 0   = True
       | otherwise        = False
