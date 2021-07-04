#!/bin/bash

source common.sh

USER=$1
REPO=$2

[[ $# -ne 2 ]] && die_ec "args not provided right" 1

function set_origin_ssh_url(){
git remote show origin
git remote set-url origin git+ssh://git@github.com/${USER}/${REPO}.git
git remote show origin
}

set_origin_ssh_url