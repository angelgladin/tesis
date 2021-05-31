main :: IO ()
main = interact $
         unlines
         . map process
         . lines
  where
    process xs = show . sum $
                   [read x :: Int | x <- words xs]
