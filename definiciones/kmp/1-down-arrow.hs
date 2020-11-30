(↓) :: Eq a => [a] -> [a] -> [a]
xs ↓ [] = xs
[] ↓ xs = []
(x:xs) ↓ (y:ys) =
  if x == y
    then xs ↓ ys
    else []