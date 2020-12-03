split ws (xs ++ [x])
  =  -- {Observación previa en (ec. 3)}
split ws (us ++ [x])
  =  -- {Usando la definición recursiva de `split` de (ec.4)}
if us ++ [x] ⊑ ws then (us + [x], ws ↓ (us ++ [x]))
else split ws (tail (us ++ [x]))
  =  -- {Como ws = us ++ vs}
if us ++ [x] ⊑ (us ++ vs)  then (us + [x], (us ++ vs) ↓ (us ++ [x]))
else split ws (tail (us ++ [x]))
=  -- {Por definición de `⊑` y `↓`.
   -- Se usa `tail` porque en `(us ++ vs) ↓ (us ++ [x])`
   -- se puede analizar por casos donde us es `[]` ó `u:us`}
if [x] ⊑ vs then (us ++ [x], tail vs)
else split ws (tail (us ++ [x]))
=  -- {Análisis de casos en `us` y recordando que
   -- `split ws [] = ([], ws)` cuando se encontró `e` previamente}
if [x] ⊑ vs then (us ++ [x], tail vs)
else if null us then ([], ws)
else split ws (tail us ++ [x])
