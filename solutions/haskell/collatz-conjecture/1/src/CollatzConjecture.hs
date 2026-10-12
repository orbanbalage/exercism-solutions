module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
-- collatz n = error "You need to implement this function."
collatz n
  | n <= 0     = Nothing
-- no need for other Guards, just use `otherwise`
  | otherwise  = Just (steps n)

steps :: Integer -> Integer
steps 1 = 0
-- simplify n `mod` 2 == 0:
steps n
  | even n = 1 + steps (n `div` 2)
-- once again, no more Guards, just `otherwise`
  | otherwise = 1 + steps ((3 * n) + 1)