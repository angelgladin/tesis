import           Test.QuickCheck

import qualified KMP
import qualified MP1
import qualified MP2
import qualified NaiveMatching

data TextPattern =
  S String String

instance Arbitrary TextPattern where
  arbitrary = do
    textSize <- choose (1, 1000)
    patternSize <- choose (1, 20)
    text <- vectorOf textSize $ elements "GACT"
    pattern_ <- vectorOf patternSize $ elements "GACT"
    return (S pattern_ text)

instance Show TextPattern where
  show (S p t) = "Pattern:" ++ p ++ "\n" ++ "Text:" ++ t

prop_matches1 :: TextPattern -> Bool
prop_matches1 (S p t) = (NaiveMatching.matches p t) == (MP1.matches p t)

prop_matches2 :: TextPattern -> Bool
prop_matches2 (S p t) = (MP1.matches p t) == (MP2.matches p t)

prop_matches3 :: TextPattern -> Bool
prop_matches3 (S p t) = (MP2.matches p t) == (KMP.matches p t)

prop_matches4 :: TextPattern -> Bool
prop_matches4 (S p t) = (NaiveMatching.matches p t) == (KMP.matches p t)

main :: IO ()
main = do
  putStrLn "Testing NaiveMatching with MP1..."
  quickCheck prop_matches1
  putStrLn "Testing MP1 with MP2..."
  quickCheck prop_matches2
  putStrLn "Testing MP2 with KMP..."
  quickCheck prop_matches3
  putStrLn "Testing NaiveMatching with KMP..."
  quickCheck prop_matches4
