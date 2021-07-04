#!/bin/bash

set -x
scriptsArr=(common set_up_git)

function main() {
    for i in "${scriptsArr[@]}"; do
        source ${i}.sh
    done
}

main
set +x
