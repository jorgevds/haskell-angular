module Component.Class
(
componentClass
) where

import Data.List (intercalate)

componentClass :: [String] -> [String] -> String
componentClass xs [y, z] = componentImport ++ component xs [y] [z]
componentClass xs [y] = componentImport ++ component xs [y] [] 

componentImport = "import { Component } from \"@angular/core\";" ++ "\n\n" 

component xs [y] [z] = componentDecorator xs ++ "export class " ++ y ++ "{" ++ z ++ "\n" ++ "}" 
component xs [y] [] = componentDecorator xs ++ "export class " ++ y ++ "{}"

componentDecorator xs = "@Component({" ++ "\n" ++ intercalate "," xs ++ "\n" 
-- to do: create big fn that does intercalate w comma and newline for the component selector and file references, pass in the component name to clean up the above
