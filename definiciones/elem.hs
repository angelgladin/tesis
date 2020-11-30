elem :: (Eq a) => a -> [a] -> Bool
a `elem` [] = False
a `elem` (x:xs) =
  if a == x
    then True
    else a `elem` xs
