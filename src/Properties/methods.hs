module Properties.Methods 
(
met,
) where

import Types.Main

met :: [String] -> String -> String
met [x,  z] y = x ++ "(" ++  getType y ++ ")" ++ matchType z ++ " {}" 
met [x] y = x ++ "(" ++ getType y ++ ")" ++ " {}" 

