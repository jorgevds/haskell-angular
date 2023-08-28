module Modifiers.Modifiers
(
priv,
publ,
prot
) where

priv :: String -> String
priv x = "private " ++ x

publ :: String -> String
publ x = "public " ++ x

prot :: String -> String
prot x = "protected " ++ x
