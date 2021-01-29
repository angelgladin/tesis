import           Data.Array (Array, bounds, listArray, (!))

main :: IO ()
main = interact $ unlines . map parse . takeWhile (/= "*") . lines
  where
    parse :: String -> String
    parse = show . proccess
    proccess :: String -> Int
    proccess xs =
      let pi_array = ptable xs
          n = snd $ bounds pi_array
          last = snd $ pi_array ! n
          patternLength = n - last
       in if n `mod` patternLength == 0
            then n `div` patternLength
            else 1


ptable :: Eq a => [a] -> Array Int (a, Int)
ptable as = xa
  where
    xa = listArray (1, length as) (zip as (scanl op 0 (tail as)))
    op k b
      | a == b = k + 1
      | k == 0 = 0
      | otherwise = op p b
      where
        a = fst (xa ! (k + 1))
        p = snd (xa ! k)
