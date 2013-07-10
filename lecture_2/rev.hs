rev [] = []
rev x  = last x : rev (init x)
