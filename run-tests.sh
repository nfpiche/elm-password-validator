#!/bin/bash
mkdir -p tmp
elm-make test/PasswordValidationTest.elm --output tmp/run.js
node tmp/run.js
rm -rf tmp
