-- TODO: está todo feo el código

import           Data.Array (Array, elems, listArray, (!))

type Table a = [(a, Int, Int)]

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

main = interact $ unlines . fmap proccess . takeWhile (\x -> x /= "*") . lines

proccess = show . foo

foo xs =
  let pi_array = map (\(_, x, _) -> x) (table xs)
      (size, last) = lastIndexed pi_array
      k_length = size - last
   in if size `mod` k_length == 0
        then size `div` k_length
        else 1

-- TODO: hacerlo con fold
lastIndexed xs = bar 0 xs

bar n [x]    = (n + 1, x)
bar n (x:xs) = bar (n + 1) xs
