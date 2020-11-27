inits :: [a] -> [[a]]
inits []     = [[]]
inits (x:xs) = [] : map (x :) (inits xs)
