#!/bin/sh

EXEC=build/adder

FAILED=0

# tst <name> <input> <expected_output>
function tst() {
    echo -n "$1 "
    RESULT=$(echo $2 | $EXEC)
    if [[ $RESULT = $3 ]]; then
        echo pass
        return
    fi

    echo fail
    echo "  Input: $2"
    echo "  Expected output: $3"
    echo "  Output: $RESULT"

    FAILED=$((FAILED + 1))
}

tst "2 + 3" "2 3" "5"
tst "5 - 1" "5 -1" "4"

[[ $FAILED != 0 ]] && exit 1
