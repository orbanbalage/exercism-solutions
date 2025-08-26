module Darts (score) where

score :: Float -> Float -> Int
--score x y = error "You need to implement this function."
{-
reminder to NOT USE TABULATOR... - use 2 or 4 spaces for indentation... 
that was actually the parsing problem...
-}

{- 
probably both ways work, let's try:
score x y
    | distance > 10                  = 0
    | distance > 5 && distance <= 10 = 1
    | distance > 1 && distance <= 5  = 5
    | distance <= 1                  = 10
    where
      distance = sqrt (x^2 + y^2)
-}

{-
WTF, it was a matter of white space to make this work!!! the "result"s had to be inline???
-}
{-
score x y = 
  let distance = sqrt (x^2 + y^2)
      result | distance > 10                  = 0
             | distance > 5 && distance <= 10 = 1
             | distance > 1 && distance <= 5  = 5
             | distance <= 1                  = 10
  in  result
-}
score x y = 
  let distance = sqrt (x^2 + y^2)
  in  case () of
      _ | distance > 10                  -> 0 --I have absolutely no idea what I'm doing
        | distance > 5 && distance <= 10 -> 1
        | distance > 1 && distance <= 5  -> 5
        | distance <= 1                  -> 10