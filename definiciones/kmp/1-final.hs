matches ws           = map fst . filter (null . snd . snd) .
                       scanl step (0, ([], ws))
step (n, (us, vs)) x = (n + 1, op (us, vs) x)
