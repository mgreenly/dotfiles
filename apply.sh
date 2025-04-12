#!/bin/bash

for d in */ ; do
    echo "$d"
    stow --verbose --target $HOME --dir $PWD "$d"
done
