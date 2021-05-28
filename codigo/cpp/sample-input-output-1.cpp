main :: IO ()
main = do
  t <- read <$> getLine
  inputs <- replicateM t $ replicateM 2 getLine
  let answers = proccess <$> inputs
  sequence_ $ putStrLn <$> answers
  where
    proccess :: [String] -> String
    proccess [p, q] =
      let s = q ++ q
          occurences = matches p s
       in if null occurences
            then "No"
            else "Si"
