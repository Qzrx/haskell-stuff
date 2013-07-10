facA n = product [2..n]
facB n = if n==1 then n else n * facB (n-1)
