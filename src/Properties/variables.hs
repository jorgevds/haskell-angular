module Properties.Variables 
( 
prop, 
) where

prop :: [String] -> String

prop [x, y, z] = x ++ " : " ++ z ++ " = " ++ y ++ ";"
prop [x, y] = x ++ " = " ++ y ++ ";"
prop [x] = x ++ "!" ++ ";"

