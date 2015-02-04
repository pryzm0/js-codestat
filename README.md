# js-codestat
Shell script for rough JavaScript and CoffeeScript code stats.
Useful for quick-and-dirty analysis of project codebase:

## Example
    $ . ~/Scripts/js-codestat/codestat.sh
    == ( * history_back_again ) app/ ==
    
    LINES OF CODE/JS: 1371
    LINES OF CODE/COFFEE: 943
    LINES OF COMMENTS: 94
        
    VARIABLES/JS: 175
    FUNCTIONS/JS: 196
    FUNCTIONS/COFFEE: 146
    RETURNS: 164
    IF: 166
    ELSE: 38
    UNLESS: 29
    WHILE: 6
    FOR: 124
    .PROTOTYPE/JS: 4
    CLASS/COFFEE: 3
    THIS/JS: 13
    THIS/COFFEE: 89
    SCOPES/JS: 23
    SCOPES/COFFEE: 28
    
    NON-STRICT EQUALS/JS: 42
    STRICT EQUALS/JS: 22
    STRICT EQUALS/COFFEE: 21
    ASSIGNMENTS: 673
    
    window.: 257
    document.: 101
    
    lodash: 66
    domDelegate: 6
    SeXHR: 8
    JSON: 11
    
    getElementById: 85
    addEventListener: 34
    createElement: 19
    createDocumentFragment: 4
    innerText: 7
    setTimeout: 14

