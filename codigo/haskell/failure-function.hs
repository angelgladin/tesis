import           Data.Array (Array, elems, listArray, (!))

type Table a = [(a, Int, Int)]

pi_array = map (\(_,x,_) -> x)

table :: Eq a => [a] -> Table a
table as =
  [(a, p, n) | ((a, p), n) <- zip (elems (ptable as)) ([2 .. length as] ++ [0])]

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
