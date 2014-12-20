#!/bin/sh

set -e
set -x

function assert_fail () {
    # Ignore the juggling of set -e/-x...
    set +x
    set +e
    $* 2> /dev/null
    test $? -ne 0
    STATUS=$?
    set -e
    set -x
    return $STATUS
}

BIN=$1

# Tests! #######################################################################

# Test that the associated colour modes.
$BIN --depth 256 test/1px_256_table.png | diff test/1px_256_table.out -
$BIN --depth   8 test/1px_8_table.png   | diff test/1px_8_table.out   -

# Test that it must be invoked with the name of a valid image.
assert_fail $BIN
assert_fail $BIN /dev/null

# Test the width option works.
$BIN --width=72 test/any >  /dev/null
assert_fail $BIN --width=-3 test/any
assert_fail $BIN --width=hurrrrr test/any
