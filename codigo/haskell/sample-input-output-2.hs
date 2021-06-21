main :: IO ()
-- Line-oriented I/O flow.
main = interact $
         -- Break up all "possible" lines
         -- i.e. list of strings in the input
         unlines
         -- Compute each value of the line read
         . map parse
         -- Read the input while the line read
         -- is different of "0 0"
         . takeWhile (/= "0 0")
         -- Join all the lines
         . lines
  where
    parse :: String -> String
    parse = show . process
    process :: String -> Int
    process xs = sum $ [read x :: Int | x <- words xs]
