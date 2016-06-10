module PasswordValidation exposing (..)

import String
import Char

passwordLength : String -> Int -> Bool
passwordLength password requiredLength = 
  if String.length password >= requiredLength then True else False

containsNumber : String -> Bool
containsNumber password =
  let filteredString =
    String.filter Char.isDigit(password)
  in
    if String.isEmpty filteredString then False else True

containsUpper : String -> Bool
containsUpper password =
  let filteredString =
    String.filter Char.isUpper(password)
  in
    if String.isEmpty filteredString then False else True

containsLower : String -> Bool
containsLower password =
  let filteredString =
    String.filter Char.isLower(password)
  in
    if String.isEmpty filteredString then False else True

passwordsMatch : String -> String -> Bool
passwordsMatch password passwordConfirm =
  if password == passwordConfirm then True else False
