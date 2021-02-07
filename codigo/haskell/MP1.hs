module MP1
  ( matches
  ) where

data Rep a
  = Null
  | Node a (Rep a) (Rep a)
  deriving (Show)

matches :: (Eq a) => [a] -> [a] -> [Int]
matches ws = map fst . filter (ok . snd) . scanl step (0, root)
  where
    ok (Node (us, vs) l r) = null vs

    step (n, t) x = (n + 1, op t x)
    root = grep Null ([], ws)

    op Null x = root
    op (Node (us, []) l r) x = op l x
    op (Node (us, v:vs) l r) x =
      if v == x
        then r
        else op l x
    
    grep l (us, [])   = Node (us, []) l Null
    grep l (us, v:vs) = Node (us, v : vs) l (grep (op l v) (us ++ [v], vs))
