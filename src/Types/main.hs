module Types.Main
(
getType,
replaceType,
matchType
) where

import Data.List

getType y =  intercalate ", "  [keepParam y ++ replaceType y]

keepParam y = unwords $ init $ words y

replaceType :: String -> String
replaceType x = matchType $  unwords $ tail $ words x 

matchType :: String -> String
matchType x = case x of
                "s" -> ": string"
                "b" -> ": boolean"
                "n" -> ": number"
                "o" -> ": Observable"
                "u" -> ": Subject"
                "r" -> ": ReplaySubject"
                "h" -> ": BehaviorSubject"
