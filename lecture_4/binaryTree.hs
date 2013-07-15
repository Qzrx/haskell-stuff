data Tree a = EmptyTree 
            | NodeValue a (Tree a) (Tree a) 
            deriving (Show, Eq)
 
add :: (Num a) => Tree a -> a
add (EmptyTree)       = 0
add (NodeValue a l r) =  a + add (l) + add (r)