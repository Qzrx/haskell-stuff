-- Doesn't work! :(
-- rotate and next work, but cipher fails still. hmm...

cipher [] _   = []
cipher x n    = rotate x n
cipher x:xs n = rotate x n : cipher xs n)

rotate x 0    = x
rotate x n    = rotate (next x) (n-1)

next n        = if n == 'z' then 'a' else succ n