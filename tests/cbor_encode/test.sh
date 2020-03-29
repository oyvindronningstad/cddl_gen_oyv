#!/bin/bash

if ! [ -d "build_canonical" ]
then
        canonical_arg="-DCANONICAL=CANONICAL"
fi

for dir in 'test2_simple/' 'test3_strange/' ;
do
        west build -b native_posix "$dir" -d "build/$dir" -t run
done

for dir in 'test1_suit/' 'test2_simple/' 'test3_strange/' ;
do
        west build -b native_posix "$dir" -d "build_canonical/$dir" -t run $canonical_arg "$@"
done
