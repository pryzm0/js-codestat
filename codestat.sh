#!/bin/sh

SRC=src/

echo "== ( $(git branch | grep '*') ) $SRC =="
echo

echo 'LINES OF CODE/JS:' $(find $SRC -name '*.js' -exec cat {} \; | grep -vP '^\s*$' | wc -l)

echo 'LINES OF CODE/COFFEE:' $(find $SRC -name '*.coffee' -exec cat {} \; | grep -vP '^\s*$' | wc -l)

echo 'LINES OF COMMENTS:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep -P '//|#' {} \; | wc -l)

# echo 'SEMICOLONS/JS:' $(find $SRC -name '*.js' -exec grep -P '\;' {} \; | wc -l)

# echo 'SEMICOLONS/COFFEE:' $(find $SRC -name '*.coffee' -exec grep -P '\;' {} \; | wc -l)

echo

echo 'VARIABLES/JS:' $(find $SRC -name '*.js' -exec grep 'var ' {} \; | wc -l)

echo 'FUNCTIONS/JS:' $(find $SRC -name '*.js' -exec grep 'function' {} \; | wc -l)

echo 'FUNCTIONS/COFFEE:' $(find $SRC -name '*.coffee' -exec grep -P '=>|->' {} \; | wc -l)

echo 'RETURNS:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'return' {} \; | wc -l)

echo 'IF:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'if' {} \; | wc -l)

echo 'ELSE:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'else' {} \; | wc -l)

echo 'UNLESS:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'unless' {} \; | wc -l)

echo 'WHILE:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'while' {} \; | wc -l)

echo 'FOR:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'for' {} \; | wc -l)

echo '.PROTOTYPE/JS:' $(find $SRC -name '*.js' -exec grep -P '\.prototype' {} \; | wc -l)

echo 'CLASS/COFFEE:' $(find $SRC -name '*.coffee' -exec grep 'class ' {} \; | wc -l)

echo 'THIS/JS:' $(find $SRC -name '*.js' -exec grep 'this' {} \; | wc -l)

echo 'THIS/COFFEE:' $(find $SRC -name '*.coffee' -exec grep '@' {} \; | wc -l)

echo 'SCOPES/JS:' $(find $SRC -name '*.js' -exec grep -P '\)\(' {} \; | wc -l)

echo 'SCOPES/COFFEE:' $(find $SRC -name '*.coffee' -exec grep -P '\)\(|=>' {} \; | wc -l)

echo

echo 'NON-STRICT EQUALS/JS:' $(find $SRC -name '*.js' -exec grep -P '==[^=]' {} \; | wc -l)

echo 'STRICT EQUALS/JS:' $(find $SRC -name '*.js' -exec grep -P '===' {} \; | wc -l)

echo 'STRICT EQUALS/COFFEE:' $(find $SRC -name '*.coffee' -exec grep -P '==' {} \; | wc -l)

echo 'ASSIGNMENTS:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep -P '[^=]=[^=]' {} \; | wc -l)

echo

echo 'window.:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep -P 'window\.' {} \; | wc -l)

echo 'document.:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep -P 'document\.' {} \; | wc -l)

echo 

echo 'lodash:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep -P '_\.' {} \; | wc -l)

echo 'domDelegate:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'domDelegate' {} \; | wc -l)

echo 'SeXHR:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'sexhr' {} \; | wc -l)

echo 'JSON:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'JSON' {} \; | wc -l)

echo

echo 'getElementById:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'getElementById' {} \; | wc -l)

echo 'addEventListener:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'addEventListener' {} \; | wc -l)

echo 'createElement:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'createElement' {} \; | wc -l)

echo 'createDocumentFragment:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'createDocumentFragment' {} \; | wc -l)

echo 'innerText:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'innerText' {} \; | wc -l)

echo 'setTimeout:' $(find $SRC \( -name '*.js' -o -name '*.coffee' \) -exec grep 'setTimeout' {} \; | wc -l)

