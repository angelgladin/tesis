import           Test.QuickCheck

import qualified FailureFunctionNaive
import qualified FailureFunctionOptimized

import qualified Data.Array               as A (elems)

newtype Pattern =
  S String

instance Arbitrary Pattern where
  arbitrary = do
    size <- choose (1, 1000)
    text <- vectorOf size $ elements ['a' .. 'z']
    return (S text)

instance Show Pattern where
  show (S s) = s

prop_failure_function :: Pattern -> Bool
prop_failure_function (S as) =
  let xs = map snd $ FailureFunctionNaive.ptable as
      ys = A.elems $ FailureFunctionOptimized.ptable as
   in xs == ys

main :: IO ()
main = do
  putStrLn "Running failure function tests..."
  quickCheck prop_failure_function
