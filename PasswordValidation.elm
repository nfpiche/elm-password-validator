module PasswordValidation exposing (..)

import String
import Char

passwordLength : String -> Int -> Bool
passwordLength password requiredLength = 
  String.length password >= requiredLength

containsNumber : String -> Bool
containsNumber password =
  String.filter Char.isDigit(password)
  |> String.isEmpty
  |> not

containsUpper : String -> Bool
containsUpper password =
  String.filter Char.isUpper(password)
  |> String.isEmpty
  |> not

containsLower : String -> Bool
containsLower password =
  String.filter Char.isLower(password)
  |> String.isEmpty
  |> not

passwordsMatch : String -> String -> Bool
passwordsMatch password passwordConfirm =
  password == passwordConfirm
