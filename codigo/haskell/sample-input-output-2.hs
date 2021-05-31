main :: IO ()
main = interact $
         unlines
         . map parse
         . takeWhile (/= "0 0")
         . lines
  where
    parse :: String -> String
    parse = show . process
    process :: String -> Int
    process xs = sum $ [read x :: Int | x <- words xs]
