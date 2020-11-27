split ws []          = e                   -- (eq.1)
split ws (xs ++ [x]) = op (split ws xs) x  -- (eq.2)
