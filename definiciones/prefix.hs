(⊑) :: Eq a => [a] -> [a] -> Bool
[] ⊑ _ = True
_ ⊑ [] = False
(u:us) ⊑ (v:vs) = u == v && us ⊑ vs
