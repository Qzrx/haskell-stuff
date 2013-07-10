zipTogether [] [] = []
zipTogether [] ys = []
zipTogether xs [] = []
zipTogether (x:xs) (y:ys) = (x,y) : zipTogether xs ys
