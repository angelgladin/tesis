import           Control.Monad (guard, replicateM_)

main :: IO ()
main = do
  -- Bind the number of test cases by first reading
  -- the input an then parsing its type with the
  -- function `read`.
  test_cases <- read <$> getLine
  -- Perform the monad below `test_cases` times.
  replicateM_ test_cases $
    do
      -- Parse the input to a list of `Int`
      -- with a `parse` helper function.
      input <- parse <$> getLine
      -- Guarantee that there are two
      -- numbers read in the input.
      guard $ (length input) == 2
      -- Sum up the numbers given.
      let result = sum input
      -- Print out the result, but first parse
      -- the type `Int` to `String`.
      putStrLn $ show result
      where
        parse :: String -> [Int]
        parse = map read . words
