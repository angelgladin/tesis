import           Data.Array (Array, bounds, listArray, (!))

main :: IO ()
main = interact $ unlines . map parse . takeWhile (/= "*") . lines
  where
    parse :: String -> String
    parse = show . proccess
    proccess :: String -> Int
    proccess xs =
      let pi_array = ptable xs
          m = snd $ bounds pi_array
          last = snd $ pi_array ! m
          root_length = m - last
       in if n `mod` root_length == 0
            then n `div` root_length
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
