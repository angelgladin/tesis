module FailureFunctionNaive
  ( ptable
  ) where

import           Data.List (inits, isPrefixOf, tails)

type PiTable a = [(Int, (a, Int))]

ptable :: Eq a => [a] -> PiTable a
ptable as = zip [1 .. length as] (zip as (map (llsap as) (inits (tail as))))

llsap :: Eq a => [a] -> [a] -> Int
llsap as bs = head [length cs | cs <- tails bs, isPrefixOf cs as]
