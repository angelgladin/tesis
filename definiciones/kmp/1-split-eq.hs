split ws []          = e                   -- (ec.1)
split ws (xs ++ [x]) = op (split ws xs) x  -- (ec.2)
