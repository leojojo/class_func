main = do putStrLn "What is your name?"
          name1 <- getLine
          putStrLn "What is your name?"
          name2 <- getLine
          putStrLn (name1 ++ " and " ++ name2 ++ " are friends!")
