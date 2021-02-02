module FailureFunctionNaive
  ( ptable
  ) where

import           Data.Array (Array, listArray)

import           Data.List  (inits, isPrefixOf, tails)

ptable :: Eq a => [a] -> Array Int (a, Int)
ptable as = listArray (1, length as) (zip as (map (llsap as) (inits (tail as))))

-- where llsap as bs, the length of the longest suffix of bs that is also a prefix of as, is defined by
llsap as bs = head [length cs | cs <- tails bs, isPrefixOf cs as]--ptable "abacabab"
--array (1,8) [(1,('a',0)),(2,('b',0)),(3,('a',1)),(4,('c',0)),(5,('a',1)),(6,('b',2)),(7,('a',3)),(8,('b',2))]
