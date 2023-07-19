#!/bin/bash

cd ..

make

mkdir -p results/literature/asc-iterative/trivial

for file in $(find instances/literature/* -type f); do
    echo "Running $file"
    ./max-csp.exe "$file" -ascitsearch -triviallb -trivialub > "results/literature/asc-iterative/trivial/$(basename "$file")"
done
