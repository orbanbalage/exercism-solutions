module Bob (responseFor) where

import Data.Char
import Data.List

-- isShouting :: String -> Bool
-- isShouting str = not (null str) && all isUpper (filter isAlpha str) -- 8 failed
isShouting str = not (null (filter isAlpha str)) && all isUpper (filter isAlpha str) -- 5 failed

isSilence str = all isSpace str
trim = dropWhileEnd isSpace

responseFor :: String -> String
-- responseFor xs = error "You need to implement this function."
responseFor xs
  | xs == ""                         = "Fine. Be that way!" -- works...
--  | drop ((length xs)-1) xs == "?" = "Sure."
  | isShouting xs && last xs == '?'  = "Calm down, I know what I'm doing!"
--  | last xs == '?'                   = "Sure." -- TODO: "Okay if like my  spacebar  quite a bit?   "
  | (length . trim) xs > 0 && (last . trim) xs == '?'                   = "Sure." -- Err: Prelude.last: empty list 
                                                        -- "" is handled, so it should be fine!
--  | xs == []                       = "Fine. Be that way!"
--  | (isSilence xs)                 = "Fine. Be that way!"
--  | isSilence $ trim xs              = "Fine. Be that way!" -- OK!
  | (isSilence . trim) xs              = "Fine. Be that way!" -- OK! -- Err: Prelude.last: empty list
  | (isShouting xs)                  = "Whoa, chill out!"
  | otherwise                        = "Whatever."