import ElmTest exposing (..)
import PasswordValidation exposing (..)

tests : Test
tests =
  suite "PasswordValidation"
  [
    test "passwordLength with long password" (assertEqual True (passwordLength "abcdefgh" 8))
    ,test "passwordLength with short password" (assertEqual False (passwordLength "abcdefg" 8))
    ,test "containsNumber with number" (assertEqual True (containsNumber "abcd1"))
    ,test "containsNumber without number" (assertEqual False (containsNumber "abcd"))
    ,test "containsUpper with upper" (assertEqual True (containsUpper "Abcd1"))
    ,test "containsUpper without upper" (assertEqual False (containsUpper "abcd1"))
    ,test "containsLower with lower" (assertEqual True (containsLower "abcd1"))
    ,test "containsLower without lower" (assertEqual False (containsLower "ABCD1"))
    ,test "passwordsMatch with matching" (assertEqual True (passwordsMatch "ABCD1" "ABCD1"))
    ,test "passwordsMatch without matching" (assertEqual False (passwordsMatch "ABCD1" "abcd1"))
  ]

main =
  runSuite tests
