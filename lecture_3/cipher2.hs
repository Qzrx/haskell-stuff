cipher :: String -> Int-> String
cipher "" n = ""
cipher str n = rotate (head str) n : cipher (tail str) n

rotate :: Char -> Int -> Char
rotate c 0 = c
rotate c n = rotate (next c) (n-1)

next :: Char -> Char
next c = if c=='z' then 'a' else succ c