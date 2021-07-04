#!/bin/bash

'''
Made to source all scripts
'''

scriptsArr=(common)

function main(){
    for i in "${scriptsArr[@]}";do
        source ${i}.sh
    done
}

main