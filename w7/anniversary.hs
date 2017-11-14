{-
  Name: Leo Fujita
  Student ID: 71575612
-}

import System.Environment

main = do args <- getArgs
          let year = read $ args !! 0
          let month = read $ args !! 1
          let day = read $ args !! 2
          putStrLn $ yearStr year month (day + 10)
          putStrLn $ yearStr year month (day + 100)
          putStrLn $ yearStr year month (day + 1000)
          putStrLn $ yearStr year month (day + 10000)

yearStr::Int -> Int -> Int -> String
yearStr y m d | d > yearDay y    = yearStr (y + 1) m (d - yearDay y)
              | d > monthDay y m = yearStr y (m + 1) (d - monthDay y m)
              | m > 12           = yearStr (y + 1) (m - 12) d
              | otherwise        = show y ++ "/" ++ show m ++ "/" ++ show d

yearDay::Int -> Int
yearDay y = if leap y
               then 366
               else 365

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
