-- What is a binary tree?
-- has two possible states:
-- []
-- [x, leftTree, rightTree]

data Tree a = Value a (Tree a) (Tree a) 
          | EmptyTree
            deriving (Show, Eq)

--add :: Tree -> Int
--add EmptyTree = 0
--add t = (+) value t  (add )