#!/bin/bash

if ! [ -d "build" ]; then mkdir build; fi
pushd build

for dir in 'test1_suit_old_formats/' 'test2_suit/' 'test3_simple/' 'test5_strange/' ;
do
        west build -b native_posix "../$dir" -d "$dir" -t run "$@" #2>&1 1> test.log
done

popd
