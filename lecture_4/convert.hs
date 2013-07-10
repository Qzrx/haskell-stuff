convert :: (Double, [Char]) -> (Double, [Char])
convert (m, t)
  | t == "m"   = (m * 1.09, "yd")
  | t == "yd"  = (m / 1.09, "m")
  | t == "L"   = (m * 0.264, "gal")
  | t == "gal" = (m / 0.264, "L")
  | t == "kg"  = (m * 2.205, "lb")
  | t == "lb"  = (m / 2.205, "kg")
  | otherwise  = (m, t)