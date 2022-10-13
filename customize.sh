#!/bin/bash

set -e
set -u
resolved=$1

for x in $(find $resolved -type f -name "*.json")
do
    found=$(cat $x | grep "alabaster.matrix::loadArray" | wc -l)
    if [[ $found -gt 0 ]]
    then
        echo $x
        cat $x | sed "s/alabaster.matrix::loadArray/calcite::loadArray/" > blah
        mv blah $x
    fi
done
