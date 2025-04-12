#!/bin/bash

pushd $PWD

cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

for d in */ ; do
    echo "$d"
    stow --verbose --target $HOME --dir $PWD "$d"
done

popd
