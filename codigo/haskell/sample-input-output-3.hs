main :: IO ()
main = interact $
         unlines
         . map parse
         . lines
  where
    parse :: String -> String
    parse = show . process
    process :: String -> Int
    process xs = sum $ [read x :: Int | x <- words xs]
