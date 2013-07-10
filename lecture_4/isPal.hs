isPal :: Eq a => [a] -> Bool
isPal []   = True
isPal [x]  = True
isPal (x:xs) = if x == (last xs) then isPal (init xs) else False