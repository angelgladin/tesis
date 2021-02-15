import           Data.List (intercalate)

main :: IO ()
main = interact $ unlines . map proccess . parse . lines
  where
    parse:: [String] -> [(String, String, String)]
    parse (s1:s2:s3:ss) = (s1, s2, s3) : parse ss
    parse _             = []

    proccess :: (String, String, String) -> String
    proccess (patternLenght, pattern, text) =
      let occurrences = matches pattern text
          m = read patternLenght :: Int
      in if null occurrences
            then "\n"
            else intercalate "\n" $ show <$> (map (subtract m) occurrences)

data Rep a
  = Null
  | Node a (Rep a) (Rep a)
  deriving (Show)

matches :: (Eq a) => [a] -> [a] -> [Int]
matches ws = map fst . filter (ok . snd) . scanl step (0, root)
  where
    ok (Node vs l r) = null vs
    step (n, t) x = (n + 1, op t x)
    op Null x = root
    op (Node [] l r) x = op l x
    op (Node (v:vs) l r) x =
      if v == x
        then r
        else op l x
    root = grep Null ws
    grep l []     = Node [] l Null
    grep l (v:vs) = Node (v : vs) (next l v) (grep (op l v) vs)
    next Null x = Null
    next (Node [] l r) x = Node [] l r
    next (Node (v:vs) l r) x =
      if v == x
        then next l x
        else Node (v : vs) l r
