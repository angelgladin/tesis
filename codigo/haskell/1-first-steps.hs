import           Data.List (tails)

(⊑) :: Eq a => [a] -> [a] -> Bool
[] ⊑ vs = True
(u:us) ⊑ [] = False
(u:us) ⊑ (v:vs) = (u == v && us ⊑ vs)

endswith :: Eq a => [a] -> [a] -> Bool
endswith ws = (== ws) . head . filter (⊑ ws) . tails

(↓) :: Eq a => [a] -> [a] -> [a]
xs ↓ [] = xs
[] ↓ xs = []
(x:xs) ↓ (y:ys) =
  if x == y
    then xs ↓ ys
    else []

split :: Eq a => [a] -> [a] -> ([a], [a])
split ws xs =
  if xs ⊑ ws
    then (xs, ws ↓ xs)
    else split ws (tail xs)

matches :: (Eq a) => [a] -> [a] -> [Int]
matches ws = map fst . filter (null . snd . snd) . scanl step (0, ([], ws))
  where
    step (n, (us, vs)) x = (n + 1, op (us, vs) x)
      where
        op (us, vs) x
          | [x] ⊑ vs = (us ++ [x], tail vs)
          | null us = ([], ws)
          | otherwise = op (split ws (tail us)) x

matches' ws =  scanl step (0, ([], ws))
  where
    step (n, (us, vs)) x = (n + 1, op (us, vs) x)
      where
        op (us, vs) x
          | [x] ⊑ vs = (us ++ [x], tail vs)
          | null us = ([], ws)
          | otherwise = op (split ws (tail us)) x
