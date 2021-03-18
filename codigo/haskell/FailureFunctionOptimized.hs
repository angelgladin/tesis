module FailureFunctionOptimized
  ( ptable
  ) where

import           Data.Array (Array, listArray, (!))

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
