module Properties.Dependencies
(
constr,
dep,
) where

import Data.List

constr :: [String] -> String
constr xs = "constructor(" ++ intercalate ", " xs  ++ "){}"

dep :: [String] -> String
dep [x, y] = x ++ ": " ++ y

