split ws xs =
  if xs ⊑ ws
    then (xs, ws ↓ xs)
    else split ws (tail xs)
