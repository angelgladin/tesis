matches :: Eq a => [a] -> [a] -> [Int]
matches ws    = map fst . filter (p . snd) . scanl step (0, e)
step (n, x) y = (n + 1, op x y)
