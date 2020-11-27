(⊑) :: Eq a => [a] -> [a] -> Bool
[] ⊑ vs = True
(u:us) ⊑ [] = False
(u:us) ⊑ (v:vs) = (u == v && us ⊑ vs)
