import qualified Test.QuickCheck as QC

import qualified KMP
import qualified MP1
import qualified MP2
--import qualified NaiveMatching

prop_kmatches :: String -> String -> Bool
prop_kmatches as bs = (as `KMP.matches` bs) == (as `MP2.matches` bs)


main :: IO ()
main = QC.quickCheck prop_kmatches
