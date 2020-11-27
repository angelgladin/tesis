op (us, vs) x
  | [x] ⊑ vs = (us ++ [x], tail vs)
  | null us = ([], ws)
  | otherwise = op (split ws (tail us)) x
