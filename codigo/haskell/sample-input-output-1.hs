import           Control.Monad (guard, replicateM_)

main :: IO ()
main = do
  -- Bind the number of test cases to `t`
  -- `t` has type `Int`
  test_cases <- read <$> getLine
  replicateM_ test_cases $
    do
      input <- parse <$> getLine
      guard $ (length input) == 2
      let result = sum input
      putStrLn $ show result
      where
        parse :: String -> [Int]
        parse = map read . words
