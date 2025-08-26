module Pangram (isPangram) where

import Data.List
import Data.Char

--abc = ['A'..'Z']
abc = ['a'..'z']

isPangram :: String -> Bool
--isPangram text = error "You need to implement this function."
isPangram x = sort (nub (filter isAsciiLower (map toLower x))) == abc


