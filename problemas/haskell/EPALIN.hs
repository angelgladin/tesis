import           Data.Array (Array, bounds, listArray, (!))

main :: IO ()
main = interact $ unlines . map proccess . lines
  where
    proccess :: String -> String
    proccess xs =
      let rev = reverse xs
          aux = rev ++ '$' : xs
          pi_array = ptable aux
          n = snd $ bounds pi_array
          k = snd $ pi_array ! n
          other_part = drop k rev
       in xs ++ other_part

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
